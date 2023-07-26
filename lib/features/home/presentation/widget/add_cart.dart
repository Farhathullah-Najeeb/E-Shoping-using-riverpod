import 'package:e_shoping_app/router/auto_route_provider.dart';
import 'package:e_shoping_app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddCart extends ConsumerWidget {
  const AddCart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        IconButton(
            onPressed: () {
              ref.read(autorouterProvider).navigate(GetAllCrartsRouter());
            },
            icon: const Icon(Icons.shopping_cart))
      ],
    );
  }
}
