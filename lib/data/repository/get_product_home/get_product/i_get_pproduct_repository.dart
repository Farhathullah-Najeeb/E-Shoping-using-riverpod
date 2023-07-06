import 'package:e_shoping_app/data/model/single_product_model.dart';
import 'package:e_shoping_app/data/model/user_get_products_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class IGetProductRepository {
  Future<Result<List<Getdatamodel>, Exception>> getProduct();
  Future<Result<GetSingleProductModel, Exception>> getSingleProduct(
      {required int id});
  Future<Result<List,Exception>> getAllCategories();
}
