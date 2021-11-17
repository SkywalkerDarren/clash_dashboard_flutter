import 'package:clash_dashboard_flutter/repository/clash_apis.dart';
import 'package:clash_dashboard_flutter/repository/configs_req.dart';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  EquatableConfig.stringify = true;
  final dio = Dio();
  dio.options = dio.options.copyWith(baseUrl: 'http://127.0.0.1:9090/');
  dio.interceptors.addAll([
    LogInterceptor(requestBody: true, responseBody: true)
  ]);

  group('traffic', () {
    test('traffic', () async {
      final api = ClashApis(dio: dio);
      await for (final item in api.getTraffic()) {
        print("up: ${item.up}, down: ${item.down}");
        break;
      }
    });
  });

  group('logs', () {
    test('logs', () async {
      final api = ClashApis(dio: dio);
      await for (final item in api.getLogs('info')) {
        print("type: ${item.type}, payload: ${item.payload}");
        break;
      }
    });
  });

  group('versions', () {
    test('logs', () async {
      final api = ClashApis(dio: dio);
      final resp = await api.getVersion();
      assert(resp.version is String);
    });
  });

  group('configs', () {
    final api = ClashApis(dio: dio);
    test('getConfigs', () async {
      final resp = await api.getConfigs();
      assert(resp.port != null);
      assert(resp.mode != null);
      assert(resp.logLevel != null);
      assert(resp.allowLan != null);
      assert(resp.redirPort != null);
      assert(resp.socksPort != null);
    });

    test('updateConfigs', () async {
      await api.updateConfigs(ConfigsReqResp(redirPort: 7777));
      var resp = await api.getConfigs();
      assert(resp.redirPort == 7777);
      await api.updateConfigs(ConfigsReqResp(redirPort: 0));
      resp = await api.getConfigs();
      assert(resp.redirPort == 0);
    });

    test('putConfigs', () async {
      // todo 不知道这个api的意义
    });
  });

  group('rules', () {
    test('rules', () async {
      final api = ClashApis(dio: dio);
      final resp = await api.getRules();
      assert(resp.rules.isNotEmpty);
    });
  });

  group('proxy', () {
    final api = ClashApis(dio: dio);
    test('getProxies', () async {
      final resp = await api.getProxies();
      assert(resp.proxies.isNotEmpty);
    });

    test('getProxy', () async {
      final resp = await api.getProxy('Proxy');
      assert(resp.name.isNotEmpty);
    });

    test('getProxyDelay', () async {
      final resp = await api.getProxyDelay('Proxy', 10 * 1000, 'https://www.google.com');
      assert(resp.delay > 0);
    });
  });

  group('connections', () {
    final api = ClashApis(dio: dio);
    test('getConnections', () async {
      final resp = await api.getConnections();
      print(resp);
    });

    test('deleteConnection', () async {
      final resp = await api.getConnections();
      await api.deleteConnection(resp.connections.first.id);
    });

    test('deleteConnections', () async {
      await api.deleteConnections();
    });
  });

  group('provider', () {
    final api = ClashApis(dio: dio);
    test('getProviders', () async {
      await api.getProviders();
    });
    test('getProvider', () async {
      await api.getProvider('Proxy');
      await api.getProvider('default');
    });
    test('selectProvider', () async {
      await api.selectProvider('Proxy');
    });
    test('checkProvider', () async {
      await api.checkProvider('default');
    });
  });
}