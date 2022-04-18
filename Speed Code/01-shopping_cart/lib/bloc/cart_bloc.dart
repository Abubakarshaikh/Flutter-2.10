import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shopping_cart/cart_item.dart';
import 'package:shopping_cart/cart_repository.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository _cartRepository;
  CartBloc(this._cartRepository) : super(const CartState()) {
    on<Cartload>(_onCartLoad);
    on<Increment>(_onIncrement);
    on<Decrement>(_onDecrement);
  }

  Future<void> _onCartLoad(Cartload event, Emitter<CartState> emit) async {
    try {
      final fromRep = await _cartRepository.getAllCartItems();
      emit(CartState(items: fromRep, status: CartStatus.success));
    } catch (_) {
      emit(const CartState(status: CartStatus.failure));
    }
  }

  void _onIncrement(Increment event, Emitter<CartState> emit) async {
    final updated = state.items.map((item) {
      return item != event.item
          ? item
          : event.item.copyWith(quantity: event.item.quantity + 1);
    }).toList();
    emit(CartState(items: updated, status: CartStatus.success));
  }

  void _onDecrement(Decrement event, Emitter<CartState> emit) async {
    if (event.item.quantity > 1) {
      final updated = state.items.map((item) {
        return item != event.item
            ? item
            : event.item.copyWith(quantity: event.item.quantity - 1);
      }).toList();
      emit(CartState(items: updated, status: CartStatus.success));
    }
  }
}
