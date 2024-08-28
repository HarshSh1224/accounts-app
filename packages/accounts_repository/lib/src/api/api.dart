import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  Api() {
    _dio.options.baseUrl = 'https://reqres.in/';
  }

  Dio get sendRequest => _dio;
}
