import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shoping_app/data/model/single_product_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SingleProductSuccessView extends StatelessWidget {
  final GetSingleProductModel singleproductData;
  const SingleProductSuccessView({super.key, required this.singleproductData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeightBox(20),
        const Text("TITLE"),
        Center(
            child: CachedNetworkImage(
          imageUrl: singleproductData.image,
          progressIndicatorBuilder: (context, url, progress) =>
              const CircularProgressIndicator(
                
              ),
        )),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Catogory :",
                style: TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
              ),
              Text(
                singleproductData.category,
                style:
                    const TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        [
          singleproductData.rating.rate.text.size(5).bold.make(),
          singleproductData.price.text.size(5).bold.make()
        ]
            .hStack(alignment: MainAxisAlignment.spaceBetween)
            .pOnly(right: 20, top: 20, left: 20, bottom: 10),
        SizedBox(
          height: context.screenHeight / 11,
          width: context.screenWidth / 1.2,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "DESCRIPTION",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  singleproductData.description,
                  style:
                      const TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
