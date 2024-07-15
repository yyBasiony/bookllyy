import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  ApiService(this.dio);

  get({required String endPoint}) async {
    var response = await dio.get("$baseUrl$endPoint");
    return response;
  }
}
