import 'package:flutter/material.dart';

import '../cart_item.dart';
import 'cart_Item_thumbnail.dart';
import 'cart_item_buttons.dart';
import 'cart_item_details.dart';

class CartItemTile extends StatelessWidget {
  final CartItem item;
  const CartItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 160,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CartItemThumbnail(image: item.image)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: CartItemDetails(
                        brand: item.brand,
                        title: item.title,
                        price: item.price),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: CartItemButtons(item: item)),
                const SizedBox(width: 12),
                const Expanded(child: Opacity(opacity: 1)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
