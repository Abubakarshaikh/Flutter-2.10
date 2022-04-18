import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/bloc/cart_bloc.dart';
import 'package:shopping_cart/cart_repository.dart';
import 'package:shopping_cart/view/cart_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CartBloc(CartRepository())..add(const Cartload()),
        child:  MaterialApp(
          theme: ThemeData(
            textTheme: TextTheme(
              labelLarge: TextStyle(
                color: Colors.grey,
              ),
              titleMedium: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          home: CartPage(),
        ));
  }
}
