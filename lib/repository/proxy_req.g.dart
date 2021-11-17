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
      (json['history'] as List<dynamic>)
          .map((e) => HistoryItemResp.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['name'] as String,
      json['udp'] as bool,
    );

Map<String, dynamic> _$ProxyItemRespToJson(ProxyItemResp instance) =>
    <String, dynamic>{
      'history': instance.history.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'now': instance.now,
      'all': instance.all,
      'type': instance.type,
      'udp': instance.udp,
    };

HistoryItemResp _$HistoryItemRespFromJson(Map<String, dynamic> json) =>
    HistoryItemResp(
      json['time'] as String,
      json['delay'] as int,
    );

Map<String, dynamic> _$HistoryItemRespToJson(HistoryItemResp instance) =>
    <String, dynamic>{
      'time': instance.time,
      'delay': instance.delay,
    };

ProxyDelayResp _$ProxyDelayRespFromJson(Map<String, dynamic> json) =>
    ProxyDelayResp(
      json['delay'] as int,
    );

Map<String, dynamic> _$ProxyDelayRespToJson(ProxyDelayResp instance) =>
    <String, dynamic>{
      'delay': instance.delay,
    };
