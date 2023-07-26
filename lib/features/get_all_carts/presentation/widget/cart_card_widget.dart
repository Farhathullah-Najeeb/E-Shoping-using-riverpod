import 'package:e_shoping_app/features/delete_carts/presentation/delete_cart.dart';
import 'package:e_shoping_app/features/get_all_carts/controller/get_all_carts_pod.dart';
import 'package:e_shoping_app/features/get_all_carts/presentation/ui_state/get_all_cartats_success_view.dart';
import 'package:e_shoping_app/features/update_cart/presenation/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class CartCard extends ConsumerWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> imagesList = [
      "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MKUQ3_VW_PF+watch-45-alum-midnight-cell-8s_VW_PF_WF_SI?wid=2000&hei=2000&fmt=png-alpha&.v=1683226539556",
      "https://img.freepik.com/free-photo/pretty-red-head-woman-yellow-dress-posing-yellow-summer-mood_273443-4421.jpg",
      "https://img.freepik.com/free-photo/ecstatic-caucasian-girl-with-short-dark-hair-looking-around-outdoor-photo-adorable-white-woman-stylish-brown-dress_197531-11322.jpg?w=360"
    ];
    final cartitems = ref.watch(currentCartItem);
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Vx.yellow100,
      ),
      margin: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Image.network(
              "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MKUQ3_VW_PF+watch-45-alum-midnight-cell-8s_VW_PF_WF_SI?wid=2000&hei=2000&fmt=png-alpha&.v=1683226539556",
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartitems.userId.toString(),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                cartitems.date.toString(),
                style: const TextStyle(
                  fontSize: 5,
                ),
              ),
              const Text("\$290"),
            ],
          ),
          const Spacer(),
          DeleteCart(
            id: cartitems.id,
          ),
          UpdateButton(
            id: cartitems.id,
          )
          
        ],
      ),
    );
  }
}
