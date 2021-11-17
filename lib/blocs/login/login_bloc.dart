
import 'package:bloc/bloc.dart';
import 'package:clash_dashboard_flutter/repository/clash_apis.dart';
import 'package:clash_dashboard_flutter/repository/client.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ClashApis api;
  LoginBloc({required this.api}) : super(const LoginInitial(false)) {
    String url = 'http://127.0.0.1';
    String port = '9090';
    String token = '';
    on<LoginUpdateUrlEvent>((event, emit) {
      url = event.url;
      if (state is LoginInitial) {
        emit(LoginInitial(url.isNotEmpty && port.isNotEmpty));
      }
    });
    on<LoginUpdatePortEvent>((event, emit) {
      port = event.port;
      if (state is LoginInitial) {
        emit(LoginInitial(url.isNotEmpty && port.isNotEmpty));
      }
    });
    on<LoginUpdateTokenEvent>((event, emit) {
      token = event.token;
      if (state is LoginInitial) {
        emit(LoginInitial(url.isNotEmpty && port.isNotEmpty));
      }
    });
    on<LoginConnectEvent>((event, emit) async {
      emit(LoginConnecting());
      try {
        Client().setUrl('$url:$port');
        await api.getVersion();
        emit(LoginConnected());
      } catch (_) {
        emit(LoginInitial(url.isNotEmpty && port.isNotEmpty));
      }
    });
  }
}
