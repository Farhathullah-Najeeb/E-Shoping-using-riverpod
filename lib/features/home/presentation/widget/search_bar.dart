import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchFormBuilder extends StatelessWidget {
  const SearchFormBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: FormBuilderTextField(
        name: 'username',
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          labelText: 'Search for a product,cloths,Accesories',
          suffixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            // borderSide: BorderSide(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ).pOnly(left: 30, right: 30, top: 40),
    );
  }
}
