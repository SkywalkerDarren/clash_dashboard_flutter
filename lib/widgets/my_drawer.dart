import 'package:clash_dashboard_flutter/repository/clash_apis.dart';
import 'package:clash_dashboard_flutter/repository/traffic_req.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Text('dashboard'),
                StreamBuilder<TrafficResp>(
                  stream: ClashApis().getTraffic(),
                    builder: (context, snapshot) {
                    return Text("up: ${(snapshot.data?.up ?? 0) / 1000}kb/s down: ${(snapshot.data?.down ?? 0) / 1000}kb/s");
                }),
              ],
            ),
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          ),
          ListTile(title: Text("proxies"), onTap: () => Navigator.pop(context)),
          ListTile(title: Text("rules"), onTap: () => Navigator.pop(context)),
          ListTile(title: Text("connections"), onTap: () => Navigator.pop(context)),
          ListTile(title: Text("logs"), onTap: () => Navigator.pop(context)),
          ListTile(title: Text("settings"), onTap: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}
