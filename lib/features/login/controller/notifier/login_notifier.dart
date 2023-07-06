import 'dart:async';

import 'package:e_shoping_app/data/repository/login/login_repository_pod.dart';
import 'package:e_shoping_app/features/login/state/login_state.dart';
import 'package:e_shoping_app/router/auto_route_provider.dart';
import 'package:e_shoping_app/router/router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginNotifier extends AutoDisposeAsyncNotifier<LoginState> {
  @override
  FutureOr<LoginState> build() {
    return InitialLoginState();
  }

  void login(
      {required String username,
      required String password,
      required Function() onSuccess,
      required Function() onError}) async {
    state = AsyncValue.data(LoadingState());
    final result = await ref
        .watch(loginRepositoryProvider)
        .login(username: username, password: password);

    result.when((success) {
      state = AsyncValue.data(LoadedState());
      // navigate to onother page
      onSuccess();
      ref.read(autorouterProvider).navigate(const HomeScreenRouter());
    }, (error) {
      state = AsyncValue.data(LoagingErrorState());
      onError();
    });
  }
}
