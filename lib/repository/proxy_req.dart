import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proxy_req.g.dart';

@JsonSerializable(explicitToJson: true)
class ProxyResp extends Equatable{
  final Map<String, ProxyItemResp> proxies;

  const ProxyResp(this.proxies);

  factory ProxyResp.fromJson(Map<String, dynamic> json) =>
      _$ProxyRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProxyRespToJson(this);

  @override
  List<Object?> get props => [proxies];
}

@JsonSerializable(explicitToJson: true)
class ProxyItemResp extends Equatable {
  final List<HistoryItemResp> history;
  final String name;
  final String? now;
  final List<String>? all;
  final String type;
  final bool udp;

  const ProxyItemResp(this.all, this.now, this.type, this.history, this.name, this.udp);

  factory ProxyItemResp.fromJson(Map<String, dynamic> json) =>
      _$ProxyItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProxyItemRespToJson(this);

  @override
  List<Object?> get props => [all, now, type, history, name, udp];
}

@JsonSerializable()
class HistoryItemResp extends Equatable {
  final String time;
  final int delay;

  const HistoryItemResp(this.time, this.delay);

  factory HistoryItemResp.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryItemRespToJson(this);

  @override
  List<Object?> get props => [time, delay];
}

@JsonSerializable()
class ProxyDelayResp extends Equatable {
  final int delay;

  const ProxyDelayResp(this.delay);

  factory ProxyDelayResp.fromJson(Map<String, dynamic> json) =>
      _$ProxyDelayRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProxyDelayRespToJson(this);

  @override
  List<Object?> get props => [delay];
}
