
import 'package:clash_dashboard_flutter/pages/home/home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends MaterialPage {
  static const String sName = '/';
  const HomePage() : super(child: const HomeScreen(), name: sName);
}