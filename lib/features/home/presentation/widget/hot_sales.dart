import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HotSales extends StatelessWidget {
  const HotSales({super.key});

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
                    imageUrl:
                        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-macbook-air-space-gray-m1-202010?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1634145627000",
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ).h(70).w(80),
                  "Free Shoping"
                      .text
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
              "Mac BookM1".text.base.size(5).color(Colors.black).make(),
              "\$130".text.base.size(5).color(Colors.black).make(),
            ].hStack(alignment: MainAxisAlignment.spaceBetween),
            " Macm1 Air 512,\n With og Adapter white and blue colur"
                .text
                .size(10)
                .overflow(TextOverflow.ellipsis)
                .color(Colors.grey)
                .fontWeight(FontWeight.w500)
                .make()
                .pOnly(top: 5)
          ].vStack();
        },
      ),
    ).onTap(() {
      
    });
  }
}
