
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/models/product_model.dart';
import 'package:flutter_riverpod_app/providers/cart_provider.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.product,
    required this.cartProducts,
    required this.ref,
  });
  final ProductModel product;
  final Set<ProductModel> cartProducts;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            product.image,
            width: 60.0,
            height: 60.0,
          ),
          Text(product.title),
          Text("\$ ${product.price}"),
          if (cartProducts.contains(product))
            TextButton(
              onPressed: () => ref
                  .read(cartNotifierProvider.notifier)
                  .removeProduct(product),
              child: const Text("Remove"),
            ),
          if (!cartProducts.contains(product))
            TextButton(
              onPressed: () =>
                  ref.read(cartNotifierProvider.notifier).addProduct(product),
              child: const Text("Add To Cart"),
            ),
        ],
      ),
    );
  }
}
