part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserLogged extends UserState {
  final FirebaseUser user;

  const UserLogged(this.user);

  @override
  List<Object> get props => [user];
}
