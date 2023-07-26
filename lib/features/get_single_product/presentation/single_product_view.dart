import 'package:auto_route/auto_route.dart';
import 'package:e_shoping_app/features/get_single_product/controller/get_single_product_pod.dart';
import 'package:e_shoping_app/features/get_single_product/presentation/ui_state/single_product_error_view.dart';
import 'package:e_shoping_app/features/get_single_product/presentation/ui_state/single_product_loading_state.dart';
import 'package:e_shoping_app/features/get_single_product/presentation/ui_state/single_product_success_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


@RoutePage(
  name: 'SingleProductRouter',
  deferredLoading: true,
)
class SingleProductView extends StatelessWidget {
  final int id;
  const SingleProductView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Consumer(
            builder: (_, WidgetRef ref, __) {
              final getSingleProductData = ref.watch(getSingleProductPod(id));

              return getSingleProductData.when(
                data: (singleproductData) =>  //(singleproductData)ivede endhm nammk kodkka..adhile valu modelclassnte value anu
                SingleProductSuccessView(singleproductData: singleproductData, ),
                error: (error, stackTrace) => const SingleProductErrorView(),
                loading: () => const SingleProductLoadingState(),
                skipLoadingOnRefresh: false,
              );
            },
          ),
        ));
  }
}
