import 'package:auto_route/auto_route.dart';
import 'package:e_shoping_app/features/home/controller/home_screen_pod.dart';
import 'package:e_shoping_app/features/home/presentation/ui_state/home_empty_view.dart';
import 'package:e_shoping_app/features/home/presentation/ui_state/home_error_view_state.dart';
import 'package:e_shoping_app/features/home/presentation/ui_state/home_loading_view.dart';
import 'package:e_shoping_app/features/home/presentation/ui_state/home_success_view.dart';
import 'package:e_shoping_app/features/home/presentation/widget/get_all_categories.dart';
import 'package:e_shoping_app/features/home/presentation/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'HomeScreenRouter',
  deferredLoading: true,
)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: [
        const SearchFormBuilder(),
        [
          const GetAllCategories(),
        ].hStack(),
        Divider(
          color: Colors.grey.shade200,
        ),
        ["Hote Sales".text.make(), "See all".text.make().onTap(() {})]
            .hStack(alignment: MainAxisAlignment.spaceBetween)
            .pOnly(left: 5, right: 5, top: 5),
        Consumer(
          builder: (context, ref, child) {
            final getdata = ref.watch(homeScreenProviderPod);
            return getdata.when(
              data: (productData) => productData.isNotEmpty
                  ? HomeSuccessView(
                      getproductdata: productData,
                    )
                  : const HomeEmptyView(),
              error: (producterror, stackTrace) => const HomeErrorViewState(),
              loading: () => const HomeLoadingView(),
              skipLoadingOnRefresh: false,
            );
          },
        )
      ].vStack(
        alignment: MainAxisAlignment.start,
      ),
    )).pOnly(
      left: 15,
    );
  }
}
