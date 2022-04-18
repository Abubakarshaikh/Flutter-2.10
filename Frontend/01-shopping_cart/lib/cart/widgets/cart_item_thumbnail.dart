import 'package:flutter/material.dart';

class CartItemThumbnail extends StatelessWidget {
  final String image;
  const CartItemThumbnail({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 1.2),
        ],
      ),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
