import 'package:auto_route/auto_route.dart';
import 'package:e_shoping_app/features/get_all_categories/presentation/get_all_categories.dart';
import 'package:e_shoping_app/features/get_all_products/presentation/get_all_products_view.dart';
import 'package:e_shoping_app/features/home/presentation/widget/add_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'HomeScreenRouter',
  deferredLoading: true,
)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: [
          const AddCart(),
          const SearchBar(),
          [const GetAllCategories()].hStack(),
          Divider(
            color: Colors.grey.shade200,
          ),
          ["Hote Sales".text.make(), "See all".text.make().onTap(() {})]
              .hStack(alignment: MainAxisAlignment.spaceBetween)
              .pOnly(left: 5, right: 5, top: 5),
          const GetAllProduct()
        ].vStack(
          alignment: MainAxisAlignment.start,
        ),
      )).pOnly(
        left: 15,
      ),
    );
  }
}
