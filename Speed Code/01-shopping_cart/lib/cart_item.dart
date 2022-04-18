import 'dart:convert';

class CartItem {
  final String brand;
  final String title;
  final String image;
  final int quantity;
  final int price;
  const CartItem({
    required this.brand,
    required this.title,
    required this.image,
    required this.quantity,
    required this.price,
  });

  CartItem copyWith({
    String? brand,
    String? title,
    String? image,
    int? quantity,
    int? price,
  }) {
    return CartItem(
      brand: brand ?? this.brand,
      title: title ?? this.title,
      image: image ?? this.image,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'brand': brand,
      'title': title,
      'image': image,
      'quantity': quantity,
      'price': price,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      brand: map['brand'] ?? '',
      title: map['title'] ?? '',
      image: map['image'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      price: map['price']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItem.fromJson(String source) =>
      CartItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartItem(brand: $brand, title: $title, image: $image, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartItem &&
        other.brand == brand &&
        other.title == title &&
        other.image == image &&
        other.quantity == quantity &&
        other.price == price;
  }

  @override
  int get hashCode {
    return brand.hashCode ^
        title.hashCode ^
        image.hashCode ^
        quantity.hashCode ^
        price.hashCode;
  }
}
