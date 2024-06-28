import 'package:flutter_riverpod_app/models/product_model.dart';
import 'package:flutter_riverpod_app/shared/assets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'products_provider.g.dart';

List<ProductModel> allProducts = [
  const ProductModel(
    id: '1',
    title: 'Groovy Shorts',
    price: 120,
    image: AssetsImage.shorts,
  ),
  const ProductModel(
    id: '2',
    title: 'Karati Kit',
    price: 340,
    image: AssetsImage.karati,
  ),
  const ProductModel(
    id: '3',
    title: 'Denim Jeans',
    price: 540,
    image: AssetsImage.jeans,
  ),
  const ProductModel(
    id: '4',
    title: 'Red Backpack',
    price: 140,
    image: AssetsImage.backPack,
  ),
  const ProductModel(
    id: '5',
    title: 'Drum & Sticks',
    price: 290,
    image: AssetsImage.drum,
  ),
  const ProductModel(
    id: '6',
    title: 'Blue Suitcase',
    price: 440,
    image: AssetsImage.suitcase,
  ),
  const ProductModel(
    id: '7',
    title: 'Roller Skates',
    price: 520,
    image: AssetsImage.skates,
  ),
  const ProductModel(
    id: '8',
    title: 'Electric Guitar',
    price: 790,
    image: AssetsImage.guitar,
  ),
];

// Generated Providers
@riverpod
List<ProductModel> products(ref) => allProducts;

@riverpod
List<ProductModel> reducedProducts(ref) =>
    allProducts.where((p) => p.price < 500).toList();
