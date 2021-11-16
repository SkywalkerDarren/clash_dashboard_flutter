import 'package:json_annotation/json_annotation.dart';
part 'rules_req.g.dart';
@JsonSerializable(explicitToJson: true)
class RulesResp {
  final List<RuleItemResp> rules;

  RulesResp(this.rules);

  factory RulesResp.fromJson(Map<String, dynamic> json) =>
      _$RulesRespFromJson(json);

  Map<String, dynamic> toJson() => _$RulesRespToJson(this);
}

@JsonSerializable()
class RuleItemResp {
  final String type;
  final String payload;
  final String proxy;

  RuleItemResp(this.type, this.payload, this.proxy);

  factory RuleItemResp.fromJson(Map<String, dynamic> json) =>
      _$RuleItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$RuleItemRespToJson(this);
}