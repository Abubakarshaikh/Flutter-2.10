import 'package:flutter/services.dart';
import 'package:shopping_page/shopping_page/models/product.dart';
import 'dart:convert';

class JsonDecodeException implements Exception {}
class JsonDeserializationException implements Exception {}

class ShoppingPageRepository {
  Future<List<Product>> getAllProducts() async {
    final fromApi = await _loadAsset("assets/json/shopping_page.json");

    List fromJson;
    try {
      fromJson = json.decode(fromApi) as List<dynamic>;
    } on Exception {
      throw JsonDecodeException();
    }

    try {
      return fromJson.map((product) => Product.fromMap(product)).toList();
    } on Exception {
      throw JsonDeserializationException();
    }
  }

  // --------- Load Json --------
  Future<String> _loadAsset(String key) async {
    return rootBundle.loadString(key);
  }
}
