part of 'logs_cubit.dart';

@immutable
class LogsState {
  final Level level;
  final String msg;

  const LogsState(this.level, this.msg);
}

enum Level {
  debug, info, warn, error
}
