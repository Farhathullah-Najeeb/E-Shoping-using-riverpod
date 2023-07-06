import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_shoping_app/data/model/single_product_model.dart';
import 'package:e_shoping_app/data/model/user_get_products_model.dart';
import 'package:e_shoping_app/data/provider/get_products_homescreen/get_products_provider/i_get_products_provider_provider.dart';
import 'package:e_shoping_app/data/repository/get_product_home/get_product/i_get_pproduct_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class GetPproductRepository implements IGetProductRepository {
  IGetProductsProviderProvider iGetProductsProviderProvider;
  GetPproductRepository({required this.iGetProductsProviderProvider});
  @override
  Future<Result<List<Getdatamodel>, Exception>> getProduct() async {
    final result = await iGetProductsProviderProvider.getProduct();
    if (result.statusCode == 200) {
      var data = result.data;
      log(data.toString());
      if (data is List) {
        var product = data.map((e) => Getdatamodel.fromMap(e)).toList();
        return Success(product);
      }
    }
    return Error(Exception());
  }

  @override
  Future<Result<GetSingleProductModel, Exception>> getSingleProduct(
      {required int id}) async {
    final result = await iGetProductsProviderProvider.getSingleProduct(id: id);
    if (result.statusCode == 200) {
      return Success(GetSingleProductModel.fromMap(result.data));
    } else {
      return Error(Exception('Error'));
    }
  }
  
  @override
  Future<Result<List, Exception>> getAllCategories() {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }

  // late List category;

  // @override
  // // Future<Result<Exception, List<String>>> getAllCategories() async {
  //   var response = await iGetProductsProviderProvider.getAllCategories();
  //   if (response.statusCode == 200) {
  //     List<dynamic> responseData = response.data;
  //     // List<dynamic> value = response.data as List;
  //     // List<String> result = value.cast<String>();
  //     return Success();
  //   } else {
  //     return Error(Exception(response.data));
  //   }
  // }
// }
}