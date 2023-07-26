import 'package:auto_route/auto_route.dart';
import 'package:e_shoping_app/features/get_specefic_categories/controller/specefic_category_pod.dart';
import 'package:e_shoping_app/features/get_specefic_categories/presentation/ui_state/specific_category_error_view.dart';
import 'package:e_shoping_app/features/get_specefic_categories/presentation/ui_state/specific_category_loading_view.dart';
import 'package:e_shoping_app/features/get_specefic_categories/presentation/ui_state/specific_category_success_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(
  name: 'SpecificCategoryRouter',
  deferredLoading: true,
)
class SpecificCategory extends StatelessWidget {
  final String category;
  const SpecificCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (_, WidgetRef ref, __) {
          final getspecificData = ref.watch(speceficCategoryPod(category));
    
          return getspecificData.when(
            data: (specificdata) => SpecificCategorySuccessView(
               specificData: specificdata,
            ),
            error: (error, stackTrace) => const SpecificCategoryErrorView(),
            loading: () => const SpecificCategoryLodingView(),
            skipLoadingOnRefresh: false,
          );
        },
      ),
    );
  }
}
