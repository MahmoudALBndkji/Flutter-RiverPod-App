// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartTotalHash() => r'b0ac204d8387f0cbfd6ecdc5aef5fcd1ac2b1e2c';

/// See also [cartTotal].
@ProviderFor(cartTotal)
final cartTotalProvider = AutoDisposeProvider<double>.internal(
  cartTotal,
  name: r'cartTotalProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartTotalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CartTotalRef = AutoDisposeProviderRef<double>;
String _$cartNotifierHash() => r'50e60806452ad6c6f23fd586fd568f42a39ebc5b';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, Set<ProductModel>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<Set<ProductModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
