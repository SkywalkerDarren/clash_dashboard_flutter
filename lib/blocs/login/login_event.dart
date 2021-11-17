part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginUpdateUrlEvent extends LoginEvent {
  final String url;

  const LoginUpdateUrlEvent(this.url);

  @override
  List<Object?> get props => [url];
}

class LoginUpdatePortEvent extends LoginEvent {
  final String port;

  const LoginUpdatePortEvent(this.port);

  @override
  List<Object?> get props => [port];
}

class LoginUpdateTokenEvent extends LoginEvent {
  final String token;

  const LoginUpdateTokenEvent(this.token);

  @override
  List<Object?> get props => [token];
}

class LoginConnectEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}
