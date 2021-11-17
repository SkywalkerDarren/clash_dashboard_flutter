import 'package:json_annotation/json_annotation.dart';

part 'proxy_req.g.dart';

@JsonSerializable(explicitToJson: true)
class ProxyResp {
  final Map<String, ProxyItemResp> proxies;

  ProxyResp(this.proxies);

  factory ProxyResp.fromJson(Map<String, dynamic> json) =>
      _$ProxyRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProxyRespToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProxyItemResp {
  final List<HistoryItemResp> history;
  final String name;
  final String? now;
  final List<String>? all;
  final String type;
  final bool udp;

  ProxyItemResp(this.all, this.now, this.type, this.history, this.name, this.udp);

  factory ProxyItemResp.fromJson(Map<String, dynamic> json) =>
      _$ProxyItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProxyItemRespToJson(this);
}

@JsonSerializable()
class HistoryItemResp {
  final String time;
  final int delay;

  HistoryItemResp(this.time, this.delay);

  factory HistoryItemResp.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryItemRespToJson(this);
}

@JsonSerializable()
class ProxyDelayResp {
  final int delay;

  ProxyDelayResp(this.delay);

  factory ProxyDelayResp.fromJson(Map<String, dynamic> json) =>
      _$ProxyDelayRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProxyDelayRespToJson(this);
}
