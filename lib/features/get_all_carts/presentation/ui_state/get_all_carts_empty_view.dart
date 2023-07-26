import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class GetAllCartsEmptyView extends StatelessWidget {
  const GetAllCartsEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return "Empty Cart".text.make().centered();
  }
}
