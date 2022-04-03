part of 'cart_bloc.dart';

@immutable
abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object?> get props => [];
}

class CartInitial extends CartState {
  const CartInitial();
}

class CartItemsLoaded extends CartState {
  final List<Cart> cartItems;
  const CartItemsLoaded({required this.cartItems});

  @override
  List<Object?> get props => [cartItems];
}

class CartError extends CartState {
  const CartError();
}
