import 'package:e_shoping_app/shared/dio_client/widgets/specific_product_card.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SpecificCategorySuccessView extends StatelessWidget {
  final List<dynamic> specificData;
  const SpecificCategorySuccessView({
    super.key,
    required this.specificData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight,
      // width: context.screenWidth,
      child: GridView.builder(
        itemCount: specificData.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final specificProductdata = specificData[index];
          return SpecificProductCard(
              image: specificProductdata.image,
              id: specificProductdata.id,
              category: specificProductdata.category,
              description: specificProductdata.description,
              price: specificProductdata.price);
        },
      ),
    );
  }
}
