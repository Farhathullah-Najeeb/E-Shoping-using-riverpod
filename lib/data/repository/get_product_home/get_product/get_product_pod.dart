import 'package:e_shoping_app/data/provider/get_products_homescreen/get_products_provider/get_product_provider_pod.dart';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_repository.dart';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/i_get_pproduct_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getProductRepositoryProvider = Provider.autoDispose<IGetProductRepository>((ref) {
  return GetPproductRepository(iGetProductsProviderProvider: ref.watch(getProductProviderPod));
});