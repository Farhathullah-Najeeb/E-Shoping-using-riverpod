import 'package:e_shoping_app/data/model/user_get_products_model.dart';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenProviderPod =
    FutureProvider.autoDispose<List<Getdatamodel>>((ref) async {
  final result = await ref.watch(getProductRepositoryProvider).getProduct();
  return result.when((success) async {
    return success;
  }, (error) => throw error.toString());
  
});
