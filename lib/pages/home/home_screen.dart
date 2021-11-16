import 'package:clash_dashboard_flutter/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('主页'),),
      drawer: MyDrawer(),
    );
  }
}
