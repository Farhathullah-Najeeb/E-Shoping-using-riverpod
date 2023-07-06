abstract class LoginState {
  LoginState();
}

class InitialLoginState extends LoginState {
  InitialLoginState();
}

class LoadingState extends LoginState {
  LoadingState();
}

class LoadedState extends LoginState {
  LoadedState();
}

class LoagingErrorState extends LoginState {
  LoagingErrorState();
}

extension LoginStateUnion on LoginState {
  T map<T>({
    required T Function(InitialLoginState) initialLoginState,
    required T Function(LoadingState) loadingState,
    required T Function(LoadedState) loadedState,
    required T Function(LoagingErrorState) loagingErrorState,
  }) {
    if (this is InitialLoginState) {
      return initialLoginState(this as InitialLoginState);
    }
    if (this is LoadingState) {
      return loadingState(this as LoadingState);
    }
    if (this is LoadedState) {
      return loadedState(this as LoadedState);
    }
    if (this is LoagingErrorState) {
      return loagingErrorState(this as LoagingErrorState);
    }
    throw AssertionError('Union does not match any possible values');
  }
}