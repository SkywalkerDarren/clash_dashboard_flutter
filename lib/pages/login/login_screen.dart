import 'package:clash_dashboard_flutter/blocs/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('url'),
                const SizedBox(width: 8),
                SizedBox(
                    width: 200,
                    child: TextField(
                      decoration:
                          const InputDecoration(hintText: 'http://127.0.0.1'),
                      onChanged: (url) => context
                          .read<LoginBloc>()
                          .add(LoginUpdateUrlEvent(url)),
                    )),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('port'),
                const SizedBox(width: 8),
                SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: const InputDecoration(hintText: '9090'),
                      onChanged: (port) => context
                          .read<LoginBloc>()
                          .add(LoginUpdatePortEvent(port)),
                    )),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('token'),
                const SizedBox(width: 8),
                SizedBox(
                    width: 200,
                    child: TextField(
                      onChanged: (token) => context
                          .read<LoginBloc>()
                          .add(LoginUpdateTokenEvent(token)),
                    )),
              ],
            ),
            TextButton(
                onPressed: context.select<LoginBloc, bool>((bloc) {
                  final state = bloc.state;
                  return state is LoginInitial && state.enableConnect;
                })
                    ? () {
                        context.read<LoginBloc>().add(LoginConnectEvent());
                      }
                    : null,
                child: const Text('connect')),
          ],
        ),
      ),
    );
  }
}
