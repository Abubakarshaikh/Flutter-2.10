import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_page/shopping_page/bloc/shopping_page_bloc.dart';
import 'package:shopping_page/shopping_page/shopping_page.dart';
import 'package:shopping_page/shopping_page_repository.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ShoppingPageBloc(ShoppingPageRepository())
        ..add(const ShoppingPageLoad()),
      child: MaterialApp(
        theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.white, size: 18),
          textTheme: const TextTheme(
            titleMedium: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
        home: const ShoppingPage(),
      ),
    );
  }
}
