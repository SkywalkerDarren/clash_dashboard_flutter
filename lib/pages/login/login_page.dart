import 'package:clash_dashboard_flutter/blocs/login/login_bloc.dart';
import 'package:clash_dashboard_flutter/pages/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends MaterialPage {
  static const String sName = '/login';

  LoginPage()
      : super(
          name: sName,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => LoginBloc()),
            ],
            child: const LoginScreen(),
          ),
        );
}
