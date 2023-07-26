abstract class CartUpdateState {
  CartUpdateState();
}

class InitialUpdateState extends CartUpdateState {
  InitialUpdateState();
}

class UpdateLoadingState extends CartUpdateState {
  UpdateLoadingState();
}

class UpdateLoadedState extends CartUpdateState {
  UpdateLoadedState();
}
class UpdateLoagingErrorState extends CartUpdateState {
  UpdateLoagingErrorState();
}

extension CartUpdateStateUnion on CartUpdateState {
  T map<T>({
    required T Function(InitialUpdateState) initialUpdateState,
    required T Function(UpdateLoadingState) updateLoadingState,
    required T Function(UpdateLoadedState) updateLoadedState,
    required T Function(UpdateLoagingErrorState) updateLoagingErrorState,
  }) {
    if (this is InitialUpdateState) {
      return initialUpdateState(this as InitialUpdateState);
    }
    if (this is UpdateLoadingState) {
      return updateLoadingState(this as UpdateLoadingState);
    }
    if (this is UpdateLoadedState) {
      return updateLoadedState(this as UpdateLoadedState);
    }
    if (this is UpdateLoagingErrorState) {
      return updateLoagingErrorState(this as UpdateLoagingErrorState);
    }
    throw AssertionError('Union does not match any possible values');
  }
}