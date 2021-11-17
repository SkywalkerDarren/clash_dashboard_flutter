part of 'page_cubit.dart';

class PageState extends Equatable {
  final Page name;

  const PageState(this.name);

  @override
  List<Object?> get props => [name];
}

enum Page {
  proxies,
  rules,
  connections,
  logs,
  settings,
}
