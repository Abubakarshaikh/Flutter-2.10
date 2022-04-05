import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_page/shopping_page/widgets/product_thumbnail.dart';

import '../bloc/shopping_page_bloc.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShoppingPageBloc, ShoppingPageState>(
      listener: (context, listner) {},
      builder: (context, state) {
        if (state is ShoppingPageInitial) {
          const Center(child: CircularProgressIndicator());
        } else if (state is ShoppingPageLoaded) {
          return GridView.builder(
            itemCount: state.products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemBuilder: (context, index) {
              return ProductThumbnail(product: state.products[index]);
            },
          );
        }
        return const Text("Something went wrong");
      },
    );
  }
}
