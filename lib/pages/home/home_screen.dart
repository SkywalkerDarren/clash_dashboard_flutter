import 'package:clash_dashboard_flutter/blocs/page/page_cubit.dart';
import 'package:clash_dashboard_flutter/blocs/traffic/traffic_cubit.dart';
import 'package:clash_dashboard_flutter/blocs/version/version_cubit.dart';
import 'package:clash_dashboard_flutter/pages/home/connections/connections_body.dart';
import 'package:clash_dashboard_flutter/pages/home/menu_item.dart';
import 'package:clash_dashboard_flutter/pages/home/proxies/proxies_body.dart';
import 'package:clash_dashboard_flutter/pages/home/rules/rules_body.dart';
import 'package:clash_dashboard_flutter/pages/home/settings/settings_body.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logs/logs_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 200, child: SideBar()),
          Expanded(
            child: BlocBuilder<PageCubit, PageState>(builder: (context, state) {
              switch (state.name) {
                case Page.proxies:
                  return const ProxiesBody();
                case Page.rules:
                  return const RulesBody();

                case Page.connections:
                  return const ConnectionsBody();

                case Page.logs:
                  return const LogsBody();

                case Page.settings:
                  return const SettingsBody();

              }
            }),
          )
        ],
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('clash dashboard'),
        BlocBuilder<TrafficCubit, TrafficState>(
            builder: (context, state) {
          return Column(
            mainAxisSize:MainAxisSize.min,
            children: [
              Text(
                  'up: ${state.upload / 1000}kb/s'),
              Text(
                  'down: ${state.download / 1000}kb/s'),
            ],
          );
        }),
        MenuItem(
            title: "proxies",
            onTap: () =>
                context.read<PageCubit>().gotoPage(Page.proxies)),
        MenuItem(
            title: "rules",
            onTap: () => context.read<PageCubit>().gotoPage(Page.rules)),
        MenuItem(
            title: "connections",
            onTap: () =>
                context.read<PageCubit>().gotoPage(Page.connections)),
        MenuItem(
            title: "logs",
            onTap: () => context.read<PageCubit>().gotoPage(Page.logs)),
        MenuItem(
            title: "settings",
            onTap: () =>
                context.read<PageCubit>().gotoPage(Page.settings)),
        const Spacer(),
        BlocBuilder<VersionCubit, VersionState>(
            builder: (context, state) {
          return Text('version: ${state.version}');
        }),
      ],
    );
  }
}
