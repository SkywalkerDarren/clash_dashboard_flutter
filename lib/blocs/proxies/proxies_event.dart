part of 'proxies_bloc.dart';

abstract class ProxiesEvent extends Equatable {
  const ProxiesEvent();
}

class ProxiesUpdateEvent extends ProxiesEvent {
  final List<ProxyItemResp> proxies;

  const ProxiesUpdateEvent(this.proxies);
  @override
  List<Object?> get props => [proxies];
}
