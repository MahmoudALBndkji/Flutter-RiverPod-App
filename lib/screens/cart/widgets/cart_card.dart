import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/models/product_model.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Image.asset(
          product.image,
          width: 60.0,
          height: 60.0,
        ),
        title: Text(product.title),
        trailing: Text("\$ ${product.price}"),
      ),
    );
  }
}
