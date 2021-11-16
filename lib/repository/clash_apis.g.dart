// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clash_apis.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BaseClashApis implements BaseClashApis {
  _BaseClashApis(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> getLogs_(level) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'level': level};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'GET',
            headers: _headers,
            extra: _extra,
            responseType: ResponseType.stream)
        .compose(_dio.options, '/logs',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> getTraffic_() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'GET',
            headers: _headers,
            extra: _extra,
            responseType: ResponseType.stream)
        .compose(_dio.options, '/traffic',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<VersionResp> getVersion() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VersionResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/version',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VersionResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConfigsReqResp> getConfigs() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ConfigsReqResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/configs',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ConfigsReqResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> putConfigs() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PUT', headers: _headers, extra: _extra)
            .compose(_dio.options, '/configs',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> patchConfigs(req) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(req.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/configs',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<RulesResp> getRules() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RulesResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/rules',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RulesResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProxyResp> getProxies() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProxyResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/proxies',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProxyResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProxyItemResp> getProxy(proxyName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProxyItemResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/proxies/$proxyName',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProxyItemResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProxyDelayResp> getProxyDelay(proxyName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProxyDelayResp>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/proxies/$proxyName/delay',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProxyDelayResp.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
