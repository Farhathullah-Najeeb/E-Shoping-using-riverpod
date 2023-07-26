import 'package:e_shoping_app/data/model/get_all_carts.dart';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getAllCartsProviderPod =
    FutureProvider.autoDispose<List<GetAllCartModel>>((ref) async {
  final result = await ref.watch(getProductRepositoryProvider).getAllCarts();
  return result.when((success) async {
    return success;
  }, (error) => throw error.toString());
});
