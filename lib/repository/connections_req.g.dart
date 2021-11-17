// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connections_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectionsResp _$ConnectionsRespFromJson(Map<String, dynamic> json) =>
    ConnectionsResp(
      (json['connections'] as List<dynamic>)
          .map((e) => ConnectionItemResp.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['downloadTotal'] as int,
      json['uploadTotal'] as int,
    );

Map<String, dynamic> _$ConnectionsRespToJson(ConnectionsResp instance) =>
    <String, dynamic>{
      'connections': instance.connections.map((e) => e.toJson()).toList(),
      'downloadTotal': instance.downloadTotal,
      'uploadTotal': instance.uploadTotal,
    };

ConnectionItemResp _$ConnectionItemRespFromJson(Map<String, dynamic> json) =>
    ConnectionItemResp(
      json['id'] as String,
      (json['chains'] as List<dynamic>).map((e) => e as String).toList(),
      json['start'] as String,
      json['download'] as int,
      json['upload'] as int,
      json['rule'] as String,
      json['rulePayload'] as String,
      ConnectionMetadataItemResp.fromJson(
          json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConnectionItemRespToJson(ConnectionItemResp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chains': instance.chains,
      'start': instance.start,
      'download': instance.download,
      'upload': instance.upload,
      'rule': instance.rule,
      'rulePayload': instance.rulePayload,
      'metadata': instance.metadata,
    };

ConnectionMetadataItemResp _$ConnectionMetadataItemRespFromJson(
        Map<String, dynamic> json) =>
    ConnectionMetadataItemResp(
      json['destinationIP'] as String,
      json['destinationPort'] as String,
      json['host'] as String,
      json['network'] as String,
      json['sourceIP'] as String,
      json['sourcePort'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$ConnectionMetadataItemRespToJson(
        ConnectionMetadataItemResp instance) =>
    <String, dynamic>{
      'destinationIP': instance.destinationIP,
      'destinationPort': instance.destinationPort,
      'host': instance.host,
      'network': instance.network,
      'sourceIP': instance.sourceIP,
      'sourcePort': instance.sourcePort,
      'type': instance.type,
    };
