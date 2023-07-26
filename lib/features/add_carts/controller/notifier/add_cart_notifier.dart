import 'dart:async';

import 'package:e_shoping_app/data/model/get_all_carts.dart';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:e_shoping_app/features/add_carts/state/cart_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddCartNotifier extends AutoDisposeAsyncNotifier<CartAddState> {
  @override
  FutureOr<CartAddState> build() {
    return InitialCartState();
  }

  void addToCart(
      {required int userId,
      required String date,
      required List<Product> products,
      required int quandity}) async {
    state = AsyncValue.data(CartLoadingState());
    final result = await ref.watch(getProductRepositoryProvider).addCarts(
        userId: userId, date: date, products:[], quandity: quandity);
    result.when((success) {
      state = AsyncValue.data(CartLoadedState());
    }, (error) {
      state = AsyncValue.data(CartLoagingErrorState());
    });
  }
}
