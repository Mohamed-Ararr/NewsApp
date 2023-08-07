import 'package:dio/dio.dart';

class ApiService {
  final String _apiKey = "56d83944c4504e789d428e9dd0b6c1ac";
  final String _baseUrl = "https://newsapi.org/v2/everything";
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get(String? query) async {
    var response = await dio.get("$_baseUrl?q=$query&apiKey=$_apiKey");
    return response.data;
  }
}
