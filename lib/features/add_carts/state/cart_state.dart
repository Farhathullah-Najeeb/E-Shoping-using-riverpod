
abstract class CartAddState {
  CartAddState();
}

class InitialCartState extends CartAddState {
  InitialCartState();
}

class CartLoadingState extends CartAddState {
  CartLoadingState();
}

class CartLoadedState extends CartAddState {
  CartLoadedState();
}

class CartLoagingErrorState extends CartAddState {
  CartLoagingErrorState();
}

extension AddStateUnion on CartAddState {
  T map<T>({
    required T Function(InitialCartState) initialCartState,
    required T Function(CartLoadingState) loadingState,
    required T Function(CartLoadedState) loadedState,
    required T Function(CartLoagingErrorState) loagingErrorState, 
  }) {
    if (this is InitialCartState) {
      return initialCartState(this as InitialCartState);
    }
    if (this is CartLoadingState) {
      return loadingState(this as CartLoadingState);
    }
    if (this is CartLoadedState) {
      return loadedState(this as CartLoadedState);
    }
    if (this is CartLoagingErrorState) {
      return loagingErrorState(this as CartLoagingErrorState);
    }
    throw AssertionError('Union does not match any possible values');
  }
}
