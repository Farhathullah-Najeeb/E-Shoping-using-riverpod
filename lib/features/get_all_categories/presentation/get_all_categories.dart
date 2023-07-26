import 'package:e_shoping_app/features/get_all_categories/controller/get_all_categories_pod.dart';
import 'package:e_shoping_app/features/get_all_categories/presentation/ui_state/category_error_vew_state.dart';
import 'package:e_shoping_app/features/get_all_categories/presentation/ui_state/category_loading_view.dart';
import 'package:e_shoping_app/features/get_all_categories/presentation/ui_state/category_success_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetAllCategories extends ConsumerWidget {
  const GetAllCategories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final hy = ref.watch(getProductRepositoryProvider).getAllCategories();.
    final allCategories = ref.watch(getAllCategoriespod);
    return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: allCategories.when(
          data: (getdata) => CategorySuccessView(
            categoriesList: getdata,
          ),
          error: (error, stackTrace) => const CategoryErrorViewState(),
          loading: () => const CategoryLoadingView(),
        ));
  }
}
