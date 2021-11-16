// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configs_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigsReqResp _$ConfigsReqRespFromJson(Map<String, dynamic> json) =>
    ConfigsReqResp(
      port: json['port'] as int?,
      socksPort: json['socks-port'] as int?,
      redirPort: json['redir-port'] as int?,
      allowLan: json['allow-lan'] as bool?,
      mode: json['mode'] as String?,
      logLevel: json['log-level'] as String?,
    );

Map<String, dynamic> _$ConfigsReqRespToJson(ConfigsReqResp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('port', instance.port);
  writeNotNull('socks-port', instance.socksPort);
  writeNotNull('redir-port', instance.redirPort);
  writeNotNull('allow-lan', instance.allowLan);
  writeNotNull('mode', instance.mode);
  writeNotNull('log-level', instance.logLevel);
  return val;
}
