part of 'cart_bloc.dart';

enum CartStatus { initial, loading, success, failure }

class CartState extends Equatable {
  final List<CartItem> items;
  final CartStatus status;
  const CartState({this.items = const [], this.status = CartStatus.initial});

  @override
  List<Object?> get props => [items, status];
}
