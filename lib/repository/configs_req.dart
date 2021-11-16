import 'package:json_annotation/json_annotation.dart';

part 'configs_req.g.dart';

@JsonSerializable(includeIfNull: false)
class ConfigsReqResp {
  final int? port;
  @JsonKey(name: 'socks-port')
  final int? socksPort;
  @JsonKey(name: 'redir-port')
  final int? redirPort;
  @JsonKey(name: 'allow-lan')
  final bool? allowLan;
  final String? mode;
  @JsonKey(name: 'log-level')
  final String? logLevel;

  ConfigsReqResp({
    this.port,
    this.socksPort,
    this.redirPort,
    this.allowLan,
    this.mode,
    this.logLevel,
  });

  factory ConfigsReqResp.fromJson(Map<String, dynamic> json) =>
      _$ConfigsReqRespFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigsReqRespToJson(this);
}
