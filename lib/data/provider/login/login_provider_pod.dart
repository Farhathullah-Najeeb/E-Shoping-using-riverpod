

import 'package:e_shoping_app/data/provider/login/i_user_login_provider.dart';
import 'package:e_shoping_app/data/provider/login/user_login_provider.dart';
import 'package:e_shoping_app/shared/dio_client/dio_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = Provider.autoDispose<IUserLoginProvider>((ref) {
  return UserLoginProvider(dio: ref.watch(dioProvider));
});