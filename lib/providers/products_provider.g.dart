// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsHash() => r'ea5aca873590bda8d7e294c475db62aaa5f2192a';

/// See also [products].
@ProviderFor(products)
final productsProvider = AutoDisposeProvider<List<ProductModel>>.internal(
  products,
  name: r'productsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductsRef = AutoDisposeProviderRef<List<ProductModel>>;
String _$reducedProductsHash() => r'21576c7b335346b1f3319be3f32c12aec2e4035b';

/// See also [reducedProducts].
@ProviderFor(reducedProducts)
final reducedProductsProvider =
    AutoDisposeProvider<List<ProductModel>>.internal(
  reducedProducts,
  name: r'reducedProductsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$reducedProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReducedProductsRef = AutoDisposeProviderRef<List<ProductModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
