import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeEmptyView extends StatelessWidget {
  const HomeEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return "empty".text.make();
  }
}