import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/cart/bloc/cart_bloc.dart';
import '../../cart.dart';

class ItemEditButtonsTile extends StatelessWidget {
  final Cart cartItem;
  const ItemEditButtonsTile({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 1.2)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: cartItem.quantity < 2
                ? const Icon(Icons.delete_outlined, color: Colors.red)
                : const Icon(Icons.remove),
            onTap: () {
              context.read<CartBloc>().add(Decrement(cartItem));
            },
          ),
          Text(cartItem.quantity < 10
              ? "0${cartItem.quantity}"
              : "${cartItem.quantity}"),
          InkWell(
            child: const Icon(Icons.add),
            onTap: () {
              context.read<CartBloc>().add(Increment(cartItem));
            },
          ),
        ],
      ),
    );
  }
}
