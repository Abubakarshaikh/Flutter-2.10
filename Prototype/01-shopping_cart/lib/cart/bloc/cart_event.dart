part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object?> get props => [];
}

class CartItemsLoad extends CartEvent {
  const CartItemsLoad();
}

class Increment extends CartEvent {
  final Cart cart;
  const Increment(this.cart);
  @override
  List<Object?> get props => [cart];
}

class Decrement extends CartEvent {
  final Cart cart;
  const Decrement(this.cart);
  @override
  List<Object?> get props => [cart];
}
