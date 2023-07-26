import 'dart:developer';
import 'package:e_shoping_app/data/model/get_all_carts.dart';
import 'package:e_shoping_app/data/model/single_product_model.dart';
import 'package:e_shoping_app/data/model/specific_categories_product.dart';
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
  Future<Result<List<String>, Exception>> getAllCategories() async {
    final result = await iGetProductsProviderProvider.getAllCategories();
    if (result.statusCode == 200) {
      List<dynamic> value = result.data as List;
      List<String> chategories = value.cast<String>();
      return Success(chategories);
    } else {
      return Error(Exception("Error"));
    }
  }

  @override
  Future<Result<List<SpeceficCtegoryModel>, Exception>>
      getAllSpeceficCategories({required String category}) async {
    final result = await iGetProductsProviderProvider.getAllSpeceficCategories(
        category: category);
    if (result.statusCode == 200) {
      var data = result.data;
      log(data.toString());
      if (data is List) {
        var product = data.map((e) => SpeceficCtegoryModel.fromMap(e)).toList();
        return Success(product);
      }
    }
    return Error(Exception());
  }

  @override
  Future<Result<List<GetAllCartModel>, Exception>> getAllCarts() async {
    final result = await iGetProductsProviderProvider.getAllCarts();
    if (result.statusCode == 200) {
      var data = result.data;
      log(data.toString());
      if (data is List) {
        var product = data.map((e) => GetAllCartModel.fromMap(e)).toList();
        return Success(product);
      }
    }
    return Error(Exception());
  }

  @override
  Future<Result<bool, Exception>> addCarts(
      {required int userId,
      required String date,
      required List<Product> products,
      required int quandity}) async {
    final result = await iGetProductsProviderProvider
        .addCarts(userId: userId, date: date, quandity: quandity, products: []);
    if (result.statusCode == 200) {
      return const Success(true);
    } else {
      return Error(Exception("Error"));
    }
  }

  @override
  Future<Result<bool, Exception>> updateCart(
      {required int id,
      }) async {
    final result = await iGetProductsProviderProvider
        .updateCart(id: id);
    if (result.statusCode == 200) {
      return const Success(true);
    } else {
      return Error(Exception("Error"));
    }
  }

  @override
  // ignore: non_constant_identifier_names
  Future<Result<bool, Exception>> deleteCart({required int id}) async {
    final result = await iGetProductsProviderProvider.deleteCart(id: id);
    if (result.statusCode == 200){
return const Success(true);
    } else {
      return Error(Exception("not deleted"));
    }
    }
  }

