import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/providers/cart_provider.dart';
import 'package:flutter_riverpod_app/providers/products_provider.dart';
import 'package:flutter_riverpod_app/screens/home/widgets/home_app_bar.dart';
import 'package:flutter_riverpod_app/screens/home/widgets/home_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) => HomeCard(
            product: allProducts[index],
            cartProducts: cartProducts,
            ref: ref,
          ),
        ),
      ),
    );
  }
}
