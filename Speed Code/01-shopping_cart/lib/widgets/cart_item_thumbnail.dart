import 'package:flutter/material.dart';

class CartItemThumbnail extends StatelessWidget {
  final String image;

  const CartItemThumbnail({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          const BoxShadow(color: Colors.black12, blurRadius: 1.2),
        ],
      ),
      child: Image(image: AssetImage(image)),
    );
  }
}
