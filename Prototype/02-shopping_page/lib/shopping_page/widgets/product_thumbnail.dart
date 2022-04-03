import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_page/shopping_page/bloc/shopping_page_bloc.dart';
import '../models/product.dart';

class ProductThumbnail extends StatelessWidget {
  final Product product;
  const ProductThumbnail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black26, width: 0.4),
          right: BorderSide(color: Colors.black26, width: 0.4),
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 8,
            right: 8,
            child: Icon(Icons.bookmark_border_rounded, color: Colors.black),
          ),
          Positioned(
            bottom: 90,
            left: 55,
            right: 55,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 54,
                    spreadRadius: 14,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 26,
            right: 26,
            top: 26,
            child: Image.asset(product.image),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8.5),
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  product.quantity >= 1
                      ? Column(
                          children: [
                            InkWell(
                              onTap: () {
                                context
                                    .read<ShoppingPageBloc>()
                                    .add(ProductDecrement(product));
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(height: 8),
                            Text(
                                product.quantity < 10
                                    ? "0${product.quantity}"
                                    : "${product.quantity}",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: Colors.white)),
                            const SizedBox(height: 8),
                            InkWell(
                              onTap: () {
                                context
                                    .read<ShoppingPageBloc>()
                                    .add(ProductIncrement(product));
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        )
                      : InkWell(
                          child: const Icon(Icons.add),
                          onTap: () {
                            context
                                .read<ShoppingPageBloc>()
                                .add(ProductIncrement(product));
                          },
                        ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rs. ${product.price}", style: theme.titleMedium),
                const SizedBox(height: 2),
                Text(product.title,
                    style: theme.titleMedium!.copyWith(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
