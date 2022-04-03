import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shopping_cart/cart.dart';
import 'package:shopping_cart/cart_repository.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository _cartRepository;
  CartBloc(this._cartRepository) : super(const CartInitial()) {
    on<CartItemsLoad>(_onCartItemsLoad);
    on<Increment>(_onIncrement);
    on<Decrement>(_onDecrement);
  }

  Future<void> _onCartItemsLoad(
      CartItemsLoad event, Emitter<CartState> emit) async {
    try {
      final List<Cart> fromRepo = await _cartRepository.getAllCartItems();
      emit(CartItemsLoaded(cartItems: fromRepo));
    } catch (_) {
      emit(const CartError());
    }
  }

  void _onIncrement(Increment event, Emitter<CartState> emit) {
    final state = this.state;
    if (state is CartItemsLoaded) {
      final updated = state.cartItems.map((product) {
        return product != event.cart
            ? product
            : event.cart.copyWith(quantity: event.cart.quantity + 1);
      }).toList();
      emit(CartItemsLoaded(cartItems: updated));
    }
  }

  void _onDecrement(Decrement event, Emitter<CartState> emit) {
    final state = this.state;
    if (state is CartItemsLoaded && event.cart.quantity > 1) {
      final updated = state.cartItems.map((product) {
        return product != event.cart
            ? product
            : event.cart.copyWith(quantity: event.cart.quantity - 1);
      }).toList();
      emit(CartItemsLoaded(cartItems: updated));
    }
  }
}
