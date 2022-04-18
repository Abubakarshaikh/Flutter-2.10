import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/bloc/cart_bloc.dart';
import 'package:shopping_cart/cart_item.dart';

class CartItemButtons extends StatelessWidget {
  final CartItem item;

  const CartItemButtons({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          const BoxShadow(
            color: Colors.black12,
            blurRadius: 1.2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: item.quantity < 2
                ? const Icon(Icons.delete_outline_rounded, color: Colors.red)
                : const Icon(Icons.remove),
            onTap: () {
              context.read<CartBloc>().add(Decrement(item: item));
            },
          ),
          Text("${item.quantity}"),
          InkWell(
            child: const Icon(Icons.add),
            onTap: () {
              context.read<CartBloc>().add(Increment(item: item));
            },
          ),
        ],
      ),
    );
  }
}
