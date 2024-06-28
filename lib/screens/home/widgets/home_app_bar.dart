
  import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/shared/cart_icon.dart';

AppBar homeAppBar() => AppBar(
        title: const Text('Garage Sale Products'),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        elevation: 0.5,
        centerTitle: true,
        actions: const [
          CartIcon(),
        ],
      );
