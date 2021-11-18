import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clash_dashboard_flutter/repository/clash_apis.dart';
import 'package:clash_dashboard_flutter/repository/proxy_req.dart';
import 'package:equatable/equatable.dart';

part 'proxies_event.dart';
part 'proxies_state.dart';

class ProxiesBloc extends Bloc<ProxiesEvent, ProxiesState> {
  final ClashApis api;
  ProxiesBloc({required this.api}) : super(ProxiesInitial()) {
    api.getProxies().then((resp) {
      add(ProxiesUpdateEvent(resp.proxies.values.toList()));
    });
    on<ProxiesUpdateEvent>((event, emit) {
      emit(ProxiesUpdate(event.proxies.map((e) => e.toString()).join('\n')));
    });
  }
}
