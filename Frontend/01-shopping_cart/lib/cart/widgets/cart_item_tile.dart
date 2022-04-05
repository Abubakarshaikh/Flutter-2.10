import 'package:flutter/material.dart';
import 'package:shopping_cart/cart/widgets/item_edit_buttons_tile.dart';
import '../../cart.dart';
import 'cart_item_details.dart';
import 'cart_item_thumbnail.dart';

class CartItemTile extends StatelessWidget {
  final Cart cartItem;

  const CartItemTile({Key? key, required this.cartItem}) : super(key: key);
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(child: CartItemThumbnail(image: cartItem.image)),
                  const SizedBox(width: 12),
                  Expanded(
                      child: CartItemDetails(
                          brand: cartItem.brand,
                          price: cartItem.price,
                          title: cartItem.title)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                    child: ItemEditButtonsTile(
                  cartItem: cartItem,
                )),
                const SizedBox(width: 12),
                const Expanded(child: Opacity(opacity: 0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
