import 'package:e_shoping_app/data/model/specific_categories_product.dart';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final speceficCategoryPod = FutureProvider.autoDispose
    .family<List<SpeceficCtegoryModel>, String>((ref, getCategory) async {
  final result = await ref
      .watch(getProductRepositoryProvider)
      .getAllSpeceficCategories(category:getCategory );
  return result.when((success) async {
    return success;
  }, (error) => throw error.toString());
});
