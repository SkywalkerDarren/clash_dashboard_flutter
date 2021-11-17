import 'package:clash_dashboard_flutter/blocs/traffic/traffic_cubit.dart';
import 'package:clash_dashboard_flutter/blocs/version/version_cubit.dart';
import 'package:clash_dashboard_flutter/pages/home/menu_item.dart';
import 'package:clash_dashboard_flutter/repository/clash_apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text('clash dashboard'),
              BlocBuilder<TrafficCubit, TrafficState>(builder: (context, state) {
                return Text('up: ${state.upload / 1000}kb/s down: ${state.download / 1000}kb/s');
              }),
              MenuItem(title: "proxies", onTap: () {}),
              MenuItem(title: "rules", onTap: () {}),
              MenuItem(title: "connections", onTap: () {}),
              MenuItem(title: "logs", onTap: () {}),
              MenuItem(title: "settings", onTap: () {}),
              const Spacer(),
              BlocBuilder<VersionCubit, VersionState>(builder: (context, state) {
                return Text('version: ${state.version}');
              }),
            ],
          ),
        ],
      ),
    );
  }
}
