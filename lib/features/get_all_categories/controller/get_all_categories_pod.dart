import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getAllCategoriespod =
    FutureProvider.autoDispose<List<String>>((ref) async {
  final category =
      await ref.watch(getProductRepositoryProvider).getAllCategories();
  return category.when((success) => success, (error) => throw error.toString());
});
