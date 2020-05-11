import 'dart:async';

import 'package:little_chat/repositories/firebaser_user_repository.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final FirebaseUserRepository _userRepository;

  UserBloc({@required FirebaseUserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository;

  @override
  UserState get initialState => NotLogged();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is TrySignIn) {
      yield* _mapTrySignInToState(event.email, event.password);
    }
  }

  Stream<UserState> _mapTrySignInToState(String email, String password) async* {
    try {
      final isSignedIn = await _userRepository.isAuthenticated();
      if (!isSignedIn) {
        await _userRepository.authenticate(email, password);
      }
      final user = await _userRepository.getUser();
      yield LoginSuccessful(user);
    } catch (_) {
      yield LoginError();
    }
  }
}
