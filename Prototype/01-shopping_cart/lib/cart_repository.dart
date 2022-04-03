import 'dart:convert';

import 'package:flutter/services.dart';

import 'cart.dart';

const Duration _delay = Duration(milliseconds: 200);

class CartRepository {
  Future<List<Cart>> getAllCartItems() async {
    final fromApi = await _loadAsset('assets/json/cart_items.json');
    final fromJsons = json.decode(fromApi) as List<dynamic>;
    final cartItems = fromJsons.map((item) => Cart.fromMap(item)).toList();
    return Future.delayed(_delay, () => cartItems);
  }

  // Load Json Asset:
  Future<String> _loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}
