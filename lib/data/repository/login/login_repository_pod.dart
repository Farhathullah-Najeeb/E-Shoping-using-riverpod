import 'package:e_shoping_app/data/provider/login/login_provider_pod.dart';
import 'package:e_shoping_app/data/repository/login/i_login_repository.dart';
import 'package:e_shoping_app/data/repository/login/login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRepositoryProvider = Provider.autoDispose<IUserModelRepository>((ref) {
  return UserModelRepository(iUserLoginProvider: ref.watch(loginProvider));
});