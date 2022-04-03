import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/cart/bloc/cart_bloc.dart';
import 'package:shopping_cart/cart/view/cart_page.dart';
import 'package:shopping_cart/cart_repository.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) =>
          CartBloc(CartRepository())..add(const CartItemsLoad()),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            labelLarge: TextStyle(
              color: Colors.grey,
            ),
            titleMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        home: const CartPage(),
      ),
    );
  }
}
