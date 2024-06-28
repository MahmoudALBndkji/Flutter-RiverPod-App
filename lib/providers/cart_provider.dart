import 'package:flutter_riverpod_app/models/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  // Initial Value
  @override
  Set<ProductModel> build() => const {};

  // Methods To Update State

  void addProduct(ProductModel product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(ProductModel product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

@riverpod
double cartTotal(ref) {
  final cartProducts = ref.watch(cartNotifierProvider);
  double total = 0;
  for (ProductModel product in cartProducts) {
    total += product.price;
  }

  return total;
}
