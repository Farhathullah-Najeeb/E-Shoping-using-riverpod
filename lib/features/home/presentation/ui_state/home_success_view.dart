import 'package:e_shoping_app/data/model/user_get_products_model.dart';
import 'package:e_shoping_app/features/home/presentation/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeSuccessView extends StatelessWidget {
  final List<Getdatamodel> getproductdata;
  const HomeSuccessView({super.key, required this.getproductdata});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight,
      // width: context.screenWidth,
      child: GridView.builder(
        itemCount: 10,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final productdata = getproductdata[index];
          return ProductCard(productdata: productdata,);
        },
      ),
    );
  }
}
