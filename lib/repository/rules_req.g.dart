// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RulesResp _$RulesRespFromJson(Map<String, dynamic> json) => RulesResp(
      (json['rules'] as List<dynamic>)
          .map((e) => RuleItemResp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RulesRespToJson(RulesResp instance) => <String, dynamic>{
      'rules': instance.rules.map((e) => e.toJson()).toList(),
    };

RuleItemResp _$RuleItemRespFromJson(Map<String, dynamic> json) => RuleItemResp(
      json['type'] as String,
      json['payload'] as String,
      json['proxy'] as String,
    );

Map<String, dynamic> _$RuleItemRespToJson(RuleItemResp instance) =>
    <String, dynamic>{
      'type': instance.type,
      'payload': instance.payload,
      'proxy': instance.proxy,
    };
