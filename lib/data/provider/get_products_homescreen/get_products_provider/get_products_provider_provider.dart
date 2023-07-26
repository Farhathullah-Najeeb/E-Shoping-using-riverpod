import 'package:dio/dio.dart';
import 'package:e_shoping_app/data/model/get_all_carts.dart';
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
    return dio.get("/products/categories");
  }

  @override
  Future<Response> getAllSpeceficCategories({required String category}) {
    return dio.get('/products/category/$category');
  }

  @override
  Future<Response> getAllCarts() {
    return dio.get("/carts");
  }

  @override
  Future<Response> addCarts(
      {required int userId,
      required String date,
      required List<Product> products,
      required int quandity}) {
    return dio.post("/carts", data: {
      "userId": 5,
      "date": "2020-02-03",
      "products": [
        {"productId": 5, "quantity": 1},
      ]
    });
  }

  @override
  Future<Response> updateCart(
      {required int id,
      }) {
    return dio.put("/carts", data: {
      {
        "userId": 3,
        "date": "2019 - 12 - 10",
        "products": [
          {"productId": 1, "quantity": 3}
        ]
      }
    });
  }

  @override
  Future<Response> deleteCart({required int id}) {
    return dio.delete("/carts/$id");
  }
}
