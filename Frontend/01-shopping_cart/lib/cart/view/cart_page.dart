import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/cart/bloc/cart_bloc.dart';

import '../widgets/cart_item_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, listner) {},
        builder: (context, state) {
          if (state is CartInitial) {
            return const Scaffold();
          } else if (state is CartItemsLoaded) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: state.cartItems.length,
                itemBuilder: (context, index) {
                  return CartItemTile(
                    cartItem: state.cartItems[index],
                  );
                },
              ),
            );
          }

          return const Text("Something went wromng");
        },
      ),
    );
  }
}
