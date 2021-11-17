import 'package:flutter/material.dart';

/// @author darren
/// @date 2021/11/17
class MenuItem extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const MenuItem({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(color: Colors.red,
      child: Text(title),
      ),
    );
  }
}
