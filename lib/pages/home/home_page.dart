import 'package:clash_dashboard_flutter/blocs/traffic/traffic_cubit.dart';
import 'package:clash_dashboard_flutter/blocs/version/version_cubit.dart';
import 'package:clash_dashboard_flutter/pages/home/home_screen.dart';
import 'package:clash_dashboard_flutter/repository/clash_apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends MaterialPage {
  static const String sName = '/';

  HomePage()
      : super(
          name: sName,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => VersionCubit(api: ClashApis())),
              BlocProvider(create: (_) => TrafficCubit(api: ClashApis())),
            ],
            child: const HomeScreen(),
          ),
        );
}
