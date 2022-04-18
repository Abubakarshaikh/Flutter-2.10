part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object?> get props => [];
}

class Cartload extends CartEvent {
  const Cartload();
}

class Increment extends CartEvent {
  final CartItem item;
  const Increment({required this.item});

  @override
  List<Object?> get props => [item];
}

class Decrement extends CartEvent {
  final CartItem item;
  const Decrement({required this.item});

  @override
  List<Object?> get props => [item];
}
