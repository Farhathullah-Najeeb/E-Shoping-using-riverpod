import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shoping_app/data/model/user_get_products_model.dart';
import 'package:e_shoping_app/router/auto_route_provider.dart';
import 'package:e_shoping_app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductCard extends ConsumerWidget {
  final Getdatamodel productdata;
  const ProductCard({super.key, required this.productdata});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return [
      Container(
          height: context.screenHeight * 0.14,
          width: context.screenWidth,
          decoration: BoxDecoration(
              color: Vx.yellow100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Vx.gray200)),
          child: [
            5.heightBox,
            CachedNetworkImage(
              imageUrl: productdata.image,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ).h(70).w(80),
            productdata.id.text
                .size(0.5)
                .color(Colors.white)
                .semiBold
                .make()
                .centered()
                .box
                .height(20)
                .width(120)
                .color(Colors.black)
                .withRounded(value: 5)
                .make()
                .pOnly(top: 10)
          ].vStack()),
      [
        productdata.category.text.base.size(5).color(Colors.black).make(),
        productdata.price.text.base.size(5).color(Colors.black).make(),
      ].hStack(alignment: MainAxisAlignment.spaceBetween),
      productdata.description.text
          .size(10)
          .overflow(TextOverflow.ellipsis)
          .color(Colors.grey)
          .fontWeight(FontWeight.w500)
          .make()
          .pOnly(top: 5)
    ].vStack().onTap(() {
      ref.read(autorouterProvider).navigate(SingleProductRouter(id: productdata.id));
    });
  }
}
