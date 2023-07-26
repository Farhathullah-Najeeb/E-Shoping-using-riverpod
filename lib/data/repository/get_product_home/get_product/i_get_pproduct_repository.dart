import 'package:e_shoping_app/data/model/get_all_carts.dart';
import 'package:e_shoping_app/data/model/single_product_model.dart';
import 'package:e_shoping_app/data/model/specific_categories_product.dart';
import 'package:e_shoping_app/data/model/user_get_products_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class IGetProductRepository {
  Future<Result<List<Getdatamodel>, Exception>> getProduct();
  Future<Result<GetSingleProductModel, Exception>> getSingleProduct(
      {required int id});
  Future<Result<List<String>, Exception>> getAllCategories();

  Future<Result<List<SpeceficCtegoryModel>, Exception>>
      getAllSpeceficCategories({required String category});
  Future<Result<List<GetAllCartModel>, Exception>> getAllCarts();

  Future<Result<bool, Exception>> addCarts(
      {required int userId,
      required String date,
      required List<Product> products,
      required int quandity});
  Future<Result<bool, Exception>> updateCart(
      {required int id,});
  Future<Result<bool, Exception>> deleteCart({required int id});
}
