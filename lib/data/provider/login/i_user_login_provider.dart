import 'package:dio/dio.dart';

abstract class IUserLoginProvider {
  Future<Response> login({required String username, required String password});
}
