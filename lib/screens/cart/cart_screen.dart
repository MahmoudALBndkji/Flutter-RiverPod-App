import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/providers/cart_provider.dart';
import 'package:flutter_riverpod_app/screens/cart/widgets/cart_app_bar.dart';
import 'package:flutter_riverpod_app/screens/cart/widgets/cart_card.dart';
import 'package:flutter_riverpod_app/shared/cart_empty.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});
  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;
  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartNotifierProvider);
    final total = ref.watch(cartTotalProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: cartAppBar(),
      body: cartProducts.isEmpty
          ? const CartEmpty()
          : Container(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: cartProducts
                          .map(
                            (product) => CartCard(product: product),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      "Total Price - \$ $total",
                      style: const TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
