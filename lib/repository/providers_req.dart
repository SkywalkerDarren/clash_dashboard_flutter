import 'package:json_annotation/json_annotation.dart';
import 'package:clash_dashboard_flutter/repository/proxy_req.dart';

part 'providers_req.g.dart';

@JsonSerializable(explicitToJson: true)
class ProvidersResp {
  final Map<String, ProviderItemResp> providers;

  ProvidersResp(this.providers);

  factory ProvidersResp.fromJson(Map<String, dynamic> json) =>
      _$ProvidersRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProvidersRespToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProviderItemResp {
  final String name;
  final String type;
  final String vehicleType;
  final List<ProxyItemResp> proxies;

  ProviderItemResp(this.name, this.proxies, this.type, this.vehicleType);

  factory ProviderItemResp.fromJson(Map<String, dynamic> json) =>
      _$ProviderItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderItemRespToJson(this);
}
