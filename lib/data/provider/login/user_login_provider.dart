import 'package:dio/dio.dart';

import 'i_user_login_provider.dart';

class UserLoginProvider implements IUserLoginProvider {
  Dio dio;
  UserLoginProvider({required this.dio});
  @override
  Future<Response> login({required String username, required String password}) {
    return dio
        .post("auth/login", data: {"username": username, "password": password});
  }
}
