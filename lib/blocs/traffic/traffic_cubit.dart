import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clash_dashboard_flutter/repository/clash_apis.dart';

part 'traffic_state.dart';

class TrafficCubit extends Cubit<TrafficState> {
  final List<int> downloadHistory = List.filled(300, 0, growable: true);
  final List<int> uploadHistory = List.filled(300, 0, growable: true);
  final ClashApis api;
  StreamSubscription? _subscription;

  TrafficCubit({required this.api}) : super(const TrafficState(0, 0)) {
    _subscription = api.getTraffic().listen((event) {
      downloadHistory.add(event.down);
      downloadHistory.removeAt(0);
      uploadHistory.add(event.up);
      uploadHistory.removeAt(0);
      emit(TrafficState(event.down, event.up));
    });
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
