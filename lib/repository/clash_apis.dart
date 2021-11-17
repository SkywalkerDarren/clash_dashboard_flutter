import 'dart:convert';

import 'package:clash_dashboard_flutter/repository/client.dart';
import 'package:clash_dashboard_flutter/repository/configs_req.dart';
import 'package:clash_dashboard_flutter/repository/connections_req.dart';
import 'package:clash_dashboard_flutter/repository/logs_req.dart';
import 'package:clash_dashboard_flutter/repository/proxy_req.dart';
import 'package:clash_dashboard_flutter/repository/rules_req.dart';
import 'package:clash_dashboard_flutter/repository/traffic_req.dart';
import 'package:clash_dashboard_flutter/repository/version_req.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'clash_apis.g.dart';

class ClashApis extends _BaseClashApis with ClashApisMixin {
  ClashApis({Dio? dio}) : super(dio ?? Client().dio);
}

@RestApi()
abstract class BaseClashApis {
  factory BaseClashApis(Dio dio) => _BaseClashApis(dio);

  @GET('/logs')
  @DioResponseType(ResponseType.stream)
  Future getLogs_(@Query('level') String level);

  @GET('/traffic')
  @DioResponseType(ResponseType.stream)
  Future getTraffic_();

  @GET('/version')
  Future<VersionResp> getVersion();

  @GET('/configs')
  Future<ConfigsReqResp> getConfigs();

  @PUT('/configs')
  Future putConfigs();

  @PATCH('/configs')
  Future updateConfigs(@Body() ConfigsReqResp req);

  @GET('/rules')
  Future<RulesResp> getRules();

  @GET('/proxies')
  Future<ProxyResp> getProxies();

  @GET('/proxies/{proxy}')
  Future<ProxyItemResp> getProxy(@Path('proxy') String proxyName);

  @GET('/proxies/{proxy}/delay')
  Future<ProxyDelayResp> getProxyDelay(
    @Path('proxy') String proxyName,
    @Query('timeout') int timeout,
    @Query('url') String url,
  );

  @GET('/connections')
  Future<ConnectionsResp> getConnections();

  @DELETE('/connections')
  Future deleteConnections();

  @DELETE('/connections/{id}')
  Future deleteConnection(@Path('id') String id);

  @GET('/providers/proxies')
  Future getProviders();

  @GET('/providers/proxies/{name}')
  Future getProvider(@Path('name') String name);

  @PUT('/providers/proxies/{name}')
  Future selectProvider(@Path('name') String name);

  @GET('/providers/proxies/{name}/healthcheck')
  Future checkProvider(@Path('name') String name);
}

mixin ClashApisMixin on BaseClashApis {
  Stream<LogsResp> getLogs(String level) async* {
    final ResponseBody data = await getLogs_(level);
    yield* data.stream
        .map((e) => LogsResp.fromJson(jsonDecode(String.fromCharCodes(e))));
  }

  Stream<TrafficResp> getTraffic() async* {
    final ResponseBody data = await getTraffic_();
    yield* data.stream
        .map((e) => TrafficResp.fromJson(jsonDecode(String.fromCharCodes(e))));
  }
}