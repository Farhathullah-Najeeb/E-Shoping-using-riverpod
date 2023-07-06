import 'package:e_shoping_app/data/provider/get_products_homescreen/get_products_provider/get_products_provider_provider.dart';
import 'package:e_shoping_app/data/provider/get_products_homescreen/get_products_provider/i_get_products_provider_provider.dart';
import 'package:e_shoping_app/shared/dio_client/dio_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getProductProviderPod = Provider.autoDispose<IGetProductsProviderProvider>((ref) {
  return GetProductsProviderProvider(dio: ref.watch(dioProvider));
});