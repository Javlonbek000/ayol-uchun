import 'package:ayol_uchun/core/exceptions/auth_exception.dart';
import 'package:ayol_uchun/core/interceptor.dart';
import 'package:ayol_uchun/data/models/user/user_model.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "http://192.168.100.139:8888/api/v1",
      validateStatus: (status) => true,
    ),
  )..interceptors.add(AuthInterceptor());

  Future<T> genericGetRequest<T>(
    String path, {
    Map<String, dynamic>? queryParams,
  }) async {
    var response = await dio.get(path, queryParameters: queryParams);
    if (response.statusCode == 200) {
      return response.data as T;
    } else {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    }
  }

  Future<String> login(String email, String password) async {
    var response = await dio.post(
      '/auth/login',
      data: {"login": email, "password": password},
    );
    if (response.statusCode == 200) {
      Map<String, String> data = Map<String, String>.from(response.data);
      return data["accessToken"]!;
    } else {
      throw AuthException(message: "Login qilib bo'lmadi");
    }
  }

  Future<bool> signUp(UserModel model) async {
    var response = await dio.post('/auth/register', data: model.toJson());
    if (response.statusCode == 201 || response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
