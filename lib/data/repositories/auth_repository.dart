import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/core/secure_storage.dart';
import 'package:ayol_uchun/data/models/user/user_model.dart';

class AuthRepository {
  AuthRepository({required this.client});

  final ApiClient client;

  String? jwt;

  Future<bool> login(String phone, String password) async {
    try {
      final String token = await client.login(phone, password);
      await SecureStorage.deleteToken();
      await SecureStorage.deleteCredentials();
      await SecureStorage.saveCredentials(login: phone, password: password);
      await SecureStorage.saveToken(token);
      jwt = token;
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> signUp({
    required String firstName,
    required String email,
    required String lastName,
    required String phoneNumber,
    required String password,
  }) async {
    final result = await client.signUp(
      UserModel(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
      ),
    );
    return result;
  }

  Future<void> logout() async {
    await SecureStorage.deleteToken();
    await SecureStorage.deleteCredentials();
  }

  Future<bool> refreshToken() async {
    var credentials = await SecureStorage.getCredentials();
    if (credentials['login'] == null || credentials["password"] == null) {
      return false;
    }
    jwt = await client.login(credentials["login"]!, credentials['password']!);
    await SecureStorage.deleteToken();
    await SecureStorage.saveToken(jwt!);
    return true;
  }
}
