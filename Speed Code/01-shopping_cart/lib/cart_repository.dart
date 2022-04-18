import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shopping_cart/cart_item.dart';

class CartRepository {
  Future<List<CartItem>> getAllCartItems() async {
    final fromAsset = await _loadAsset("assets/json/cart_items.json");
    final fromJson = json.decode(fromAsset) as List<dynamic>;

    return fromJson.map((item) => CartItem.fromMap(item)).toList();
  }

  // load asset
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
