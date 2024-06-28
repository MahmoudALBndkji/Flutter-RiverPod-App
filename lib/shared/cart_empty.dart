
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/shared/assets.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsImage.cartEmpty),
        const SizedBox(height: 40.0),
        const Text(
          "Cart is Empty",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}