import 'package:dio/dio.dart';
import 'i_get_products_provider_provider.dart';

class GetProductsProviderProvider implements IGetProductsProviderProvider {
  Dio dio;
  GetProductsProviderProvider({required this.dio});
  @override
  Future<Response> getProduct() async {
    return await dio.get("/products");
  }

  @override
  Future<Response> getSingleProduct({required int id}) {
    return dio.get("/products/$id");
  }

  @override
  Future<Response> getAllCategories() {
    return dio.get("/categories");
  }
  
}
