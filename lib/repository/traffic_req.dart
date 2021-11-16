import 'package:json_annotation/json_annotation.dart';

part 'traffic_req.g.dart';
@JsonSerializable()
class TrafficResp {
  final int up;
  final int down;

  TrafficResp(this.up, this.down);

  factory TrafficResp.fromJson(Map<String, dynamic> json) =>
      _$TrafficRespFromJson(json);

  Map<String, dynamic> toJson() => _$TrafficRespToJson(this);
}