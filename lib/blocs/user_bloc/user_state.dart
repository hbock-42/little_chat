part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
  @override
  List<Object> get props => [];
}

class NotLogged extends UserState {}

class LoginError extends UserState {}

class LoginSuccessful extends UserState {
  final FirebaseUser user;

  const LoginSuccessful(this.user);

  @override
  List<Object> get props => [user];
}
