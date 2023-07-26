import 'package:e_shoping_app/router/auto_route_provider.dart';
import 'package:e_shoping_app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class CategorySuccessView extends ConsumerWidget {
  final List<String> categoriesList;
  const CategorySuccessView({required this.categoriesList, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
          height: 35,
          width: context.screenWidth / 1.06,
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: categoriesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: InkWell(
                    onTap: () {
                      ref.read(autorouterProvider).navigate(
                          SpecificCategoryRouter(
                              category: categoriesList[index]));
                    },
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                          color: Vx.yellow100,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Vx.gray200)),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Center(
                          child: Text(
                            categoriesList[index],
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ));
            },
          )),
    );
  }
}
