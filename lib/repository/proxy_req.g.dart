// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proxy_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProxyResp _$ProxyRespFromJson(Map<String, dynamic> json) => ProxyResp(
      (json['proxies'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, ProxyItemResp.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ProxyRespToJson(ProxyResp instance) => <String, dynamic>{
      'proxies': instance.proxies.map((k, e) => MapEntry(k, e.toJson())),
    };

ProxyItemResp _$ProxyItemRespFromJson(Map<String, dynamic> json) =>
    ProxyItemResp(
      (json['all'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['now'] as String?,
      json['type'] as String,
    );

Map<String, dynamic> _$ProxyItemRespToJson(ProxyItemResp instance) =>
    <String, dynamic>{
      'all': instance.all,
      'now': instance.now,
      'type': instance.type,
    };

ProxyDelayResp _$ProxyDelayRespFromJson(Map<String, dynamic> json) =>
    ProxyDelayResp(
      json['delay'] as int,
    );

Map<String, dynamic> _$ProxyDelayRespToJson(ProxyDelayResp instance) =>
    <String, dynamic>{
      'delay': instance.delay,
    };
