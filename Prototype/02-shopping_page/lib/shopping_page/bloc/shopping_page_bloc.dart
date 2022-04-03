import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shopping_page/shopping_page/models/product.dart';
import 'package:shopping_page/shopping_page_repository.dart';

part 'shopping_page_event.dart';
part 'shopping_page_state.dart';

class ShoppingPageBloc extends Bloc<ShoppingPageEvent, ShoppingPageState> {
  final ShoppingPageRepository _shoppingPageRepository;
  ShoppingPageBloc(this._shoppingPageRepository)
      : super(const ShoppingPageInitial()) {
    on<ShoppingPageLoad>(_onShoppingPageLoad);
    on<ProductIncrement>(_onProductIncrement);
    on<ProductDecrement>(_onProductDecrement);
  }

  Future<void> _onShoppingPageLoad(
      ShoppingPageLoad event, Emitter<ShoppingPageState> emit) async {
    try {
      final List<Product> fromRepo =
          await _shoppingPageRepository.getAllProducts();
      emit(ShoppingPageLoaded(products: fromRepo));
    } catch (_) {}
  }

  void _onProductIncrement(ProductIncrement event, Emitter<ShoppingPageState> emit) {
    final state = this.state;
    if (state is ShoppingPageLoaded) {
      final updatedState = state.products.map((product) {
        return event.product != product
            ? product
            : event.product.copyWith(quantity: event.product.quantity + 1);
      }).toList();
      emit(ShoppingPageLoaded(products: updatedState));
    }
  }

  void _onProductDecrement(ProductDecrement event, Emitter<ShoppingPageState> emit) {
    final state = this.state;
    if (state is ShoppingPageLoaded) {
      final updatedState = state.products.map((product) {
        return event.product != product
            ? product
            : event.product.copyWith(quantity: event.product.quantity - 1);
      }).toList();
      emit(ShoppingPageLoaded(products: updatedState));
    }
  }
}
