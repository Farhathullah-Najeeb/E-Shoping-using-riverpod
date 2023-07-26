import 'package:e_shoping_app/features/get_all_products/controller/get_all_products_pod.dart';
import 'package:e_shoping_app/features/get_all_products/presentation/ui_state/get_all_products_empty_view.dart';
import 'package:e_shoping_app/features/get_all_products/presentation/ui_state/get_all_products_error_view_state.dart';
import 'package:e_shoping_app/features/get_all_products/presentation/ui_state/get_all_products_loading_view.dart';
import 'package:e_shoping_app/features/get_all_products/presentation/ui_state/get_all_products_success_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetAllProduct extends StatelessWidget {
  const GetAllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final getdata = ref.watch(homeScreenProviderPod);
        return getdata.when(
          data: (productData) => productData.isNotEmpty
              ? GetAllProductsSuccessView(
                  getproductdata: productData,
                )
              : const GetAllProductsEmptyView(),
          error: (producterror, stackTrace) => const GetAllProductsErrorView(),
          loading: () => const GetAllProductsLoadingView(),
          skipLoadingOnRefresh: false,
        );
      },
    );
  }
}
