import 'package:e_shoping_app/features/delete_carts/controller/delete_cart_pod.dart';
import 'package:e_shoping_app/features/delete_carts/state/delete_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class DeleteCart extends ConsumerWidget {
  final int id;

  const DeleteCart({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final addCartAsync = ref.watch(cartDeleteStatePod(id));
        return addCartAsync.when(
          data: (data) => data.map(
              initialCartStatee: (p0) => IconButton(
                  onPressed: () {
                    ref.read(cartDeleteStatePod(id).notifier).deleteState();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
              deleteLoadingState: (p0) => ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.greenAccent),
                    child: const CircularProgressIndicator(),
                  ),
              deleteLoadedState: (p0) =>
                  const ElevatedButton(onPressed: null, child: Text("Done")),
              deleteLoagingErrorState: (p0) =>
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
