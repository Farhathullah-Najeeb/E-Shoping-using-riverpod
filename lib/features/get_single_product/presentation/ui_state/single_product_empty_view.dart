import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SingleProductEmptyView extends StatelessWidget {
  const SingleProductEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return "empty".text.make();
  }
}