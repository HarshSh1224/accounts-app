import 'package:accounts_repository/src/api/api_routes.dart';
import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  Api() {
    _dio.options.baseUrl = ApiRoutes.baseUrl;
  }

  Dio get sendRequest => _dio;
}
