import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'connections_req.g.dart';

@JsonSerializable(explicitToJson: true)
class ConnectionsResp extends Equatable {
  final List<ConnectionItemResp> connections;
  final int downloadTotal;
  final int uploadTotal;

  const ConnectionsResp(this.connections, this.downloadTotal, this.uploadTotal);

  factory ConnectionsResp.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsRespFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectionsRespToJson(this);

  @override
  List<Object?> get props => [connections, downloadTotal, uploadTotal];
}

@JsonSerializable()
class ConnectionItemResp extends Equatable {
  final String id;
  final List<String> chains;
  final String start;
  final int download;
  final int upload;
  final String rule;
  final String rulePayload;
  final ConnectionMetadataItemResp metadata;

  const ConnectionItemResp(this.id, this.chains, this.start, this.download,
      this.upload, this.rule, this.rulePayload, this.metadata);

  factory ConnectionItemResp.fromJson(Map<String, dynamic> json) =>
      _$ConnectionItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectionItemRespToJson(this);

  @override
  List<Object?> get props =>
      [id, chains, start, download, upload, rule, rulePayload, metadata];
}

@JsonSerializable()
class ConnectionMetadataItemResp extends Equatable {
  final String destinationIP;
  final String destinationPort;
  final String host;
  final String network;
  final String sourceIP;
  final String sourcePort;
  final String type;

  const ConnectionMetadataItemResp(this.destinationIP, this.destinationPort,
      this.host, this.network, this.sourceIP, this.sourcePort, this.type);

  factory ConnectionMetadataItemResp.fromJson(Map<String, dynamic> json) =>
      _$ConnectionMetadataItemRespFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectionMetadataItemRespToJson(this);

  @override
  List<Object?> get props => [
        destinationIP,
        destinationPort,
        host,
        network,
        sourceIP,
        sourcePort,
        type
      ];
}
