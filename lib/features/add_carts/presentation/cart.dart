import 'package:e_shoping_app/data/model/get_all_carts.dart';
import 'package:e_shoping_app/features/add_carts/controller/add_cart_notifier_pod.dart';
import 'package:e_shoping_app/features/add_carts/state/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class AddToCartButton extends ConsumerWidget {
  final int userId;
  final String date;
  final List<Product> products;
  final int quandity;
  const AddToCartButton({
    super.key,
    required this.userId,
    required this.date,
    required this.products,
    required this.quandity,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final addCartAsync = ref.watch(cartStatePod);
        return addCartAsync.when(
          data: (data) => data.map(
              initialCartState: (p0) => IconButton(
                  onPressed: () {
                    ref.read(cartStatePod.notifier).addToCart(
                        userId: userId,
                        date: date,
                        products: products,
                        quandity: quandity);
                  },
                  icon: const Icon(Icons.shopping_cart)),
              loadingState: (p0) => ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.greenAccent),
                    child: const CircularProgressIndicator(),
                  ),
              loadedState: (p0) => const ElevatedButton(
                  onPressed: null, child: Text("Go to Cart")),
              loagingErrorState: (p0) =>
                  const ElevatedButton(onPressed: null, child: Text("Error"))),
          error: ((error, stackTrace) =>
              const ElevatedButton(onPressed: null, child: Text("Error"))),
          loading: () => const ElevatedButton(
              onPressed: null, child: CircularProgressIndicator()),
        );
      },
    );
  }
}
