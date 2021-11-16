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

@JsonSerializable()
class ProxyItemResp {
  final List<String>? all;
  final String? now;
  final String type;

  ProxyItemResp(this.all, this.now, this.type);

  factory ProxyItemResp.fromJson(Map<String, dynamic> json) =>
      _$ProxyItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProxyItemRespToJson(this);
}

@JsonSerializable()
class ProxyDelayResp {
  final int delay;

  ProxyDelayResp(this.delay);

  factory ProxyDelayResp.fromJson(Map<String, dynamic> json) =>
      _$ProxyDelayRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProxyDelayRespToJson(this);
}
