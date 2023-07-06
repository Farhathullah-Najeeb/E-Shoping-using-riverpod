import 'package:dio/dio.dart';

abstract class IGetProductsProviderProvider {
  Future<Response> getProduct();
  Future<Response> getSingleProduct({required int id});
  Future<Response> getAllCategories();
 
}
