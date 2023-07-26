import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class GetAllCartsLoadingView extends StatelessWidget {
  const GetAllCartsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator()
        .centered()
        .h(context.screenHeight * 0.8);
  }
}
