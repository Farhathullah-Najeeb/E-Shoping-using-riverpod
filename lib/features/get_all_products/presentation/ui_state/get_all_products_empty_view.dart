import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class GetAllProductsEmptyView extends StatelessWidget {
  const GetAllProductsEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return "empty".text.make();
  }
}