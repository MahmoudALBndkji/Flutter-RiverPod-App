import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/providers/cart_provider.dart';
import 'package:flutter_riverpod_app/screens/cart/cart_screen.dart';
import 'package:flutter_riverpod_app/shared/navigation.dart';

class CartIcon extends ConsumerWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberOfItemsInCart = ref.watch(cartNotifierProvider).length;
    return Stack(
      children: [
        IconButton(
          onPressed: () => Navigator.push(
            context,
            SizeTransitionToTop(const CartScreen()),
          ),
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            width: 18,
            height: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Text(
              numberOfItemsInCart.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
