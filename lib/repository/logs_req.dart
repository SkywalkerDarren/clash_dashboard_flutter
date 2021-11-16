import 'package:json_annotation/json_annotation.dart';

part 'logs_req.g.dart';

@JsonSerializable()
class LogsResp {
  final String type;
  final String payload;

  LogsResp(this.type, this.payload);

  factory LogsResp.fromJson(Map<String, dynamic> json) =>
      _$LogsRespFromJson(json);

  Map<String, dynamic> toJson() => _$LogsRespToJson(this);
}
