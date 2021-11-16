import 'package:json_annotation/json_annotation.dart';
part 'version_req.g.dart';
@JsonSerializable()
class VersionResp {
  final String version;

  VersionResp(this.version);

  factory VersionResp.fromJson(Map<String, dynamic> json) =>
      _$VersionRespFromJson(json);

  Map<String, dynamic> toJson() => _$VersionRespToJson(this);
}