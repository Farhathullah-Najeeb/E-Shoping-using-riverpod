import 'package:dio/dio.dart';
import 'package:e_shoping_app/data/model/get_all_carts.dart';

abstract class IGetProductsProviderProvider {
  Future<Response> getProduct();
  Future<Response> getSingleProduct({required int id});
  Future<Response> getAllCategories();
  Future<Response> getAllSpeceficCategories({required String category});
  Future<Response> getAllCarts();
  Future<Response> addCarts(
      {required int userId,
      required String date,
      required List<Product> products,
      required int quandity});
  Future<Response> updateCart({
    required int id,
  });
  Future<Response> deleteCart({required int id});
}
