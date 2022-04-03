import 'dart:convert';

class Cart {
  final String brand;
  final String title;
  int quantity;
  final String image;
  final int price;
  Cart({
    required this.brand,
    required this.title,
    required this.quantity,
    required this.image,
    required this.price,
  });

  Cart copyWith({
    String? brand,
    String? title,
    int? quantity,
    String? image,
    int? price,
  }) {
    return Cart(
      brand: brand ?? this.brand,
      title: title ?? this.title,
      quantity: quantity ?? this.quantity,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'brand': brand,
      'title': title,
      'quantity': quantity,
      'image': image,
      'price': price,
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      brand: map['brand'] ?? '',
      title: map['title'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      image: map['image'] ?? '',
      price: map['price']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cart(brand: $brand, title: $title, quantity: $quantity, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cart &&
        other.brand == brand &&
        other.title == title &&
        other.quantity == quantity &&
        other.image == image &&
        other.price == price;
  }

  @override
  int get hashCode {
    return brand.hashCode ^
        title.hashCode ^
        quantity.hashCode ^
        image.hashCode ^
        price.hashCode;
  }
}
