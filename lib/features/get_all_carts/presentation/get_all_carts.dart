import 'package:auto_route/auto_route.dart';
import 'package:e_shoping_app/features/get_all_carts/controller/get_all_carts_pod.dart';
import 'package:e_shoping_app/features/get_all_carts/presentation/ui_state/get_all_cartats_success_view.dart';
import 'package:e_shoping_app/features/get_all_carts/presentation/ui_state/get_all_carts_empty_view.dart';
import 'package:e_shoping_app/features/get_all_carts/presentation/ui_state/get_all_carts_loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
@RoutePage(
  name: 'GetAllCrartsRouter',
  deferredLoading: true,
)
class GetAllCarts extends ConsumerWidget {
  const GetAllCarts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return 
      Scaffold(
         appBar: AppBar(
          title: const Center(child: Text('My Cart')),),
        body: Consumer(
          builder: (context, ref, child) {
            final getdata = ref.watch(getAllCartsProviderPod);
            return getdata.when(
              data: (cartData) => cartData.isNotEmpty
                  ? GetAllCartsSuccessView(
                      getcartdata: cartData,
                    )
                  : const GetAllCartsEmptyView(),
              error: (producterror, stackTrace) => const GetAllCartsEmptyView(),
              loading: () => const GetAllCartsLoadingView(),
              skipLoadingOnRefresh: false,
            );
          },
        ),
      );

    
      
      //
      //
      //
      //
      //

      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.all(30),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       const Text(
      //         'Total: \$100.00', // Replace with the actual total amount
      //         style: TextStyle(
      //           fontSize: 16,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           // Implement your checkout logic here
      //         },
      //         child: const Text('Checkout'),
      //       ),
      //     ],
      //   ),
      // ),
    
  }
}
