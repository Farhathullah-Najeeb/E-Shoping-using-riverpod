import 'package:e_shoping_app/features/update_cart/controller/update_cart_pod.dart';
import 'package:e_shoping_app/features/update_cart/state/update_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class UpdateButton extends StatelessWidget {
  final int id;
  // final String date;
  // final List<Product> products;
  // final String productId;
  // final int quandity;
  const UpdateButton({
    super.key,
    required this.id,
    // required this.date,
    // required this.products,
    // required this.quandity,
    // required this.productId
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final int counter = ref.watch(counterProvider(id));

        final updateCartAsync = ref.watch(updateCartStatePod(id));
        return updateCartAsync.when(
            data: (data) => data.map(
                initialUpdateState: (p0) => Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.grey.shade200,
                          child: IconButton(
                              onPressed: () {
                                ref.read(counterProvider(id).notifier).state--;
                              },
                              icon: const Icon(
                                Icons.remove,
                                size: 10,
                                color: Vx.black,
                              )),
                        ),
                        Text(counter.toString()),
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.grey.shade200,
                          child: IconButton(
                              onPressed: () {
                                ref.read(counterProvider(id).notifier).state++;
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 10,
                                color: Vx.black,
                              )),
                        )
                      ],
                    ),
             
                updateLoadingState: (p0) => ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          backgroundColor: Colors.greenAccent),
                      child: const CircularProgressIndicator(),
                    ),
                updateLoadedState: (p0) => const ElevatedButton(
                    onPressed: null, child: Text("uploaded")),
                updateLoagingErrorState: (p0) =>
                    const CircularProgressIndicator()),
            error: ((error, stackTrace) => const ElevatedButton(
                  onPressed: null,
                  child: Text('Error'),
                )),
            loading: () => const ElevatedButton(
                onPressed: null, child: CircularProgressIndicator()));
      },
    );
  }
}
