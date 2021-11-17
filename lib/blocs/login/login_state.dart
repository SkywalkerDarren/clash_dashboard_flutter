part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  final bool enableConnect;

  const LoginInitial(this.enableConnect);

  @override
  List<Object> get props => [enableConnect];
}

class LoginConnecting extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginConnected extends LoginState {
  @override
  List<Object?> get props => [];
}
