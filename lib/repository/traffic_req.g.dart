// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traffic_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrafficResp _$TrafficRespFromJson(Map<String, dynamic> json) => TrafficResp(
      json['up'] as int,
      json['down'] as int,
    );

Map<String, dynamic> _$TrafficRespToJson(TrafficResp instance) =>
    <String, dynamic>{
      'up': instance.up,
      'down': instance.down,
    };
