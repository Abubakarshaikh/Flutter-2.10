import 'package:flutter/material.dart';

class CartItemDetails extends StatelessWidget {
  final String brand;
  final String title;
  final int price;
  const CartItemDetails(
      {Key? key, required this.brand, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(brand, style: theme.labelLarge),
        Text(title, style: theme.titleMedium),
        Text("\$$price", style: theme.titleMedium),
      ],
    );
  }
}
