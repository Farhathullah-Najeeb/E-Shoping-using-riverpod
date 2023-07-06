import 'package:e_shoping_app/features/login/controller/notifier/login_notifier.dart';
import 'package:e_shoping_app/features/login/state/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginStatePod = AsyncNotifierProvider.autoDispose<LoginNotifier, LoginState>(
  LoginNotifier.new
);