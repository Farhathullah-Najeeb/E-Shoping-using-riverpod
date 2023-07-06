import 'package:e_shoping_app/data/repository/get_product_home/get_product/get_product_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class GetAllCategories extends ConsumerWidget {
  const GetAllCategories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hy = ref.watch(getProductRepositoryProvider).getAllCategories();
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
          height: 35,
          width: context.screenWidth / 1.06,
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int sectionIndex) {
              return Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Container(
                  width: 90,
                  decoration: BoxDecoration(
                      color: Vx.yellow100,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Vx.gray200)),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Center(child: Text(hy.toString())),
                  ),
                ),
              );
            },
          )),
    );
  }
}
