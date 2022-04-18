import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/bloc/cart_bloc.dart';

import '../widgets/cart_item_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            switch (state.status) {
              case CartStatus.initial:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case CartStatus.success:
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    return CartItemTile(item: state.items[index]);
                  },
                );
              default:
                return const Center(child: Text('SomethingWrong'));
            }
          },
        ),
      ),
    );
  }
}
