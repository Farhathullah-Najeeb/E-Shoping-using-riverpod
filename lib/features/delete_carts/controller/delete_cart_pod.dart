import 'package:e_shoping_app/features/delete_carts/controller/notifier/delete_cart_notifier.dart';
import 'package:e_shoping_app/features/delete_carts/state/delete_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final cartDeleteStatePod =
    AutoDisposeAsyncNotifierProviderFamily<DeleteCartNotifier, CartDeleteState,int>(
        DeleteCartNotifier.new);
