

abstract class CartDeleteState {
  CartDeleteState();
}

class InitialCartStatee extends CartDeleteState {
  InitialCartStatee();
}

class DeleteLoadingState extends CartDeleteState {
  DeleteLoadingState();
}

class DeleteLoadedState extends CartDeleteState {
  DeleteLoadedState();
}

class DeleteLoagingErrorState extends CartDeleteState {
  DeleteLoagingErrorState();
}

extension CartDeleteStateUnion on CartDeleteState {
  T map<T>({
    required T Function(InitialCartStatee) initialCartStatee,
    required T Function(DeleteLoadingState) deleteLoadingState,
    required T Function(DeleteLoadedState) deleteLoadedState,
    required T Function(DeleteLoagingErrorState) deleteLoagingErrorState,
  }) {
    if (this is InitialCartStatee) {
      return initialCartStatee(this as InitialCartStatee);
    }
    if (this is DeleteLoadingState) {
      return deleteLoadingState(this as DeleteLoadingState);
    }
    if (this is DeleteLoadedState) {
      return deleteLoadedState(this as DeleteLoadedState);
    }
    if (this is DeleteLoagingErrorState) {
      return deleteLoagingErrorState(this as DeleteLoagingErrorState);
    }
    throw AssertionError('Union does not match any possible values');
  }
}