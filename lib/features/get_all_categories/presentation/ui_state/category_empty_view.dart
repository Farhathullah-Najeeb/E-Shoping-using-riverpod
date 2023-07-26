import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryEnptyView extends StatelessWidget {
  const CategoryEnptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return "empty".text.make();
  }
}