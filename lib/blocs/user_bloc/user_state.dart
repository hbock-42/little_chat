part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
  @override
  List<Object> get props => [];
}

class NotLogged extends UserState {}

class UserLogged extends UserState {
  final FirebaseUser user;

  const UserLogged(this.user);

  @override
  List<Object> get props => [user];
}
