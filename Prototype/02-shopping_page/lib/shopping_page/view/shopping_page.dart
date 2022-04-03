import 'package:flutter/material.dart';
import '../widgets/products_list.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductsList(),
    );
  }
}
