import 'dart:convert';

import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String title;
  final String image;
  final int price;
  final int quantity;
  const Product({
    required this.title,
    required this.image,
    required this.price,
    required this.quantity,
  });

  Product copyWith({
    String? title,
    String? image,
    int? price,
    int? quantity,
  }) {
    return Product(
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'price': price,
      'quantity': quantity,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'] ?? '',
      image: map['image'] ?? '',
      price: map['price']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(title: $title, image: $image, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.title == title &&
        other.image == image &&
        other.price == price &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return title.hashCode ^ image.hashCode ^ price.hashCode ^ quantity.hashCode;
  }

  @override
  List<Object> get props => [title, image, price, quantity];
}
