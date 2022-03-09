import 'dart:convert';

class Recipe {
  final String label;
  final String imageUrl;
  final int servings;
  const Recipe({
    required this.label,
    required this.imageUrl,
    required this.servings,
  });

  Recipe copyWith({
    String? label,
    String? imageUrl,
    int? servings,
  }) {
    return Recipe(
      label: label ?? this.label,
      imageUrl: imageUrl ?? this.imageUrl,
      servings: servings ?? this.servings,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'imageUrl': imageUrl,
      'servings': servings,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      label: map['label'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      servings: map['servings']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) => Recipe.fromMap(json.decode(source));

  @override
  String toString() =>
      'Recipe(label: $label, imageUrl: $imageUrl, servings: $servings)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Recipe &&
        other.label == label &&
        other.imageUrl == imageUrl &&
        other.servings == servings;
  }

  @override
  int get hashCode => label.hashCode ^ imageUrl.hashCode ^ servings.hashCode;
}

class Ingredient {
  final double quantity;
  final String measure;
  final String name;
  const Ingredient({
    required this.quantity,
    required this.measure,
    required this.name,
  });

  Ingredient copyWith({
    double? quantity,
    String? measure,
    String? name,
  }) {
    return Ingredient(
      quantity: quantity ?? this.quantity,
      measure: measure ?? this.measure,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quantity': quantity,
      'measure': measure,
      'name': name,
    };
  }

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    return Ingredient(
      quantity: map['quantity']?.toDouble() ?? 0.0,
      measure: map['measure'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Ingredient.fromJson(String source) =>
      Ingredient.fromMap(json.decode(source));

  @override
  String toString() =>
      'Ingredient(quantity: $quantity, measure: $measure, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Ingredient &&
        other.quantity == quantity &&
        other.measure == measure &&
        other.name == name;
  }

  @override
  int get hashCode => quantity.hashCode ^ measure.hashCode ^ name.hashCode;
}
