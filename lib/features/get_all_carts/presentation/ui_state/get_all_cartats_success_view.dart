import 'package:e_shoping_app/data/model/get_all_carts.dart';

import 'package:e_shoping_app/features/get_all_carts/presentation/widget/cart_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

final currentCartItem = Provider.autoDispose<GetAllCartModel>(
  (ref) => throw UnimplementedError(),
);

class GetAllCartsSuccessView extends ConsumerWidget {
  final List<GetAllCartModel> getcartdata;
  const GetAllCartsSuccessView({
    super.key,
    required this.getcartdata,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // print(getcartdata);
    return SizedBox(
        height: context.screenHeight,
        child: ListView.builder(
          itemCount: getcartdata.length,
          itemBuilder: (BuildContext context, int index) {
            final cartitems = getcartdata[index];
            return ProviderScope(overrides: [
              currentCartItem.overrideWithValue(cartitems),
            ], child: const CartCard());
          },
        ));
  }
}
