import 'package:flutter/material.dart';
import 'package:clash_dashboard_flutter/blocs/proxies/proxies_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// @author darren
/// @date 2021/11/17
class ProxiesBody extends StatelessWidget {
  const ProxiesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green, child: Column(
      children: [
        BlocBuilder<ProxiesBloc, ProxiesState>(builder: (context, state) {
          final String text;
          if (state is ProxiesUpdate) {
            text = state.text;
          } else {
            text = '';
          }
          return Text(text);
        },)
      ],
    ),);
  }
}
