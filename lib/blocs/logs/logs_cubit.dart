import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clash_dashboard_flutter/repository/clash_apis.dart';
import 'package:meta/meta.dart';

part 'logs_state.dart';

class LogsCubit extends Cubit<LogsState> {
  final ClashApis api;
  StreamSubscription? _subscription;
  final List<LogsState> history = [];

  LogsCubit(this.api) : super(const LogsState(Level.debug, '')) {
    api.getConfigs().then((resp) {
      _subscription = api.getLogs(resp.logLevel!).listen((event) {
        final Level level;
        switch (event.type) {
          case 'debug':
            level = Level.debug;
            break;
          case 'info':
            level = Level.info;
            break;
          case 'warn':
            level = Level.warn;
            break;
          case 'error':
            level = Level.error;
            break;
          default:
            level = Level.debug;
            break;
        }
        final logs = LogsState(level, event.payload);
        history.add(logs);
        emit(logs);
      });
    });
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
