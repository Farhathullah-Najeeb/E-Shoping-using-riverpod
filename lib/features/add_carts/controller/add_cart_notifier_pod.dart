import 'package:e_shoping_app/features/add_carts/controller/notifier/add_cart_notifier.dart';
import 'package:e_shoping_app/features/add_carts/state/cart_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartStatePod =
    AsyncNotifierProvider.autoDispose<AddCartNotifier, CartAddState>(
        AddCartNotifier.new);
