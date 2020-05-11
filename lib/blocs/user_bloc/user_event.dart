part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class TrySignIn extends UserEvent {
  final String email;
  final String password;

  const TrySignIn(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}
