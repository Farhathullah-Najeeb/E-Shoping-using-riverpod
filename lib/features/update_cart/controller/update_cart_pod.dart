import 'package:e_shoping_app/features/update_cart/controller/notifier/update_cart_notifier.dart';
import 'package:e_shoping_app/features/update_cart/state/update_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final updateCartStatePod =
    AutoDisposeAsyncNotifierProviderFamily<UpdateCartNotifier, CartUpdateState,int>(
        UpdateCartNotifier.new);
final addingCartStatePod =
    AutoDisposeAsyncNotifierProviderFamily<UpdateCartNotifier, CartUpdateState,int>(
        UpdateCartNotifier.new);

        final counterProvider = StateProvider.family.autoDispose<int,int>((ref,id) => 0); 