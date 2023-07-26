import 'dart:async';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:e_shoping_app/features/update_cart/state/update_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateCartNotifier
    extends AutoDisposeFamilyAsyncNotifier<CartUpdateState, int> {
  @override
  FutureOr<CartUpdateState> build(arg) {
    return InitialUpdateState();
  }

  void updateCart({
    required int id,
  }) async {
    state = AsyncValue.data(UpdateLoadingState());
    final result =
        await ref.watch(getProductRepositoryProvider).updateCart(id: arg);
    result.when((success) {
      state = AsyncValue.data(UpdateLoadedState());
    }, (error) {
      state = AsyncValue.data(UpdateLoagingErrorState());
    });
  }
}
