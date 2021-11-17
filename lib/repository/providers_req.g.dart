// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvidersResp _$ProvidersRespFromJson(Map<String, dynamic> json) =>
    ProvidersResp(
      (json['providers'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, ProviderItemResp.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ProvidersRespToJson(ProvidersResp instance) =>
    <String, dynamic>{
      'providers': instance.providers.map((k, e) => MapEntry(k, e.toJson())),
    };

ProviderItemResp _$ProviderItemRespFromJson(Map<String, dynamic> json) =>
    ProviderItemResp(
      json['name'] as String,
      (json['proxies'] as List<dynamic>)
          .map((e) => ProxyItemResp.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['type'] as String,
      json['vehicleType'] as String,
    );

Map<String, dynamic> _$ProviderItemRespToJson(ProviderItemResp instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'vehicleType': instance.vehicleType,
      'proxies': instance.proxies.map((e) => e.toJson()).toList(),
    };
