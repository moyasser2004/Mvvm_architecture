import 'package:dio/dio.dart';

class DioHelper {
  Dio dio;

  DioHelper({required this.dio});

  Future<dynamic> postData({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    return await dio.post(
      url,
      data: data,
    );
  }

  Future<Response> getData({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    return await dio.get(
      url,
      data: data,
    );
  }
}
