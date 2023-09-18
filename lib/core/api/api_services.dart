import 'package:dio/dio.dart';

abstract class ApiServices {
  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic> queryParameters,
    String? token,
  });

  Future<Response> post({
    required String endPoint,
    Map<String, dynamic> queryParameters,
    String token,
    required Map<String, dynamic> data,
  });
}
