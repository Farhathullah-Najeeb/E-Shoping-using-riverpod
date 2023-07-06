import 'package:e_shoping_app/data/model/single_product_model.dart';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final getSingleProductPod = FutureProvider.autoDispose
    .family<GetSingleProductModel, int>((ref, getID) async {
  final result =
      await ref.watch(getProductRepositoryProvider).getSingleProduct(id: getID);
  return result.when((success) => success, (error) => throw error.toString());
});
