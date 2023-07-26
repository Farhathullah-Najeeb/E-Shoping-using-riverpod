import 'dart:async';

import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:e_shoping_app/features/delete_carts/state/delete_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteCartNotifier extends AutoDisposeFamilyAsyncNotifier<CartDeleteState,int> {
  @override
  FutureOr<CartDeleteState> build(arg) {
    return InitialCartStatee();
  }

  void deleteState() async {
    state = AsyncValue.data(DeleteLoadingState());
    final result = await ref.watch(getProductRepositoryProvider).deleteCart(id: arg);
    result.when((success) {
      state = AsyncValue.data(DeleteLoadedState());
    }, (error) {
      state = AsyncValue.data(DeleteLoagingErrorState());
    });
  }
}
