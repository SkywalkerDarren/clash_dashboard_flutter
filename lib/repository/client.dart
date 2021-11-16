import 'package:dio/dio.dart';

class Client {
  static Client? _instance;
  Client._() {
    dio.options = dio.options.copyWith(baseUrl: 'http://127.0.0.1:9090/');
    dio.interceptors.addAll([
      LogInterceptor(requestBody: true, responseBody: true)
    ]);
  }

  factory Client() {
    return _instance ??= Client._();
  }

  void setUrl(String url) {
    dio.options = dio.options.copyWith(baseUrl: url);
  }

  final dio = Dio();

}