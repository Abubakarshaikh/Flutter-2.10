part of 'shopping_page_bloc.dart';

@immutable
abstract class ShoppingPageEvent extends Equatable {
  const ShoppingPageEvent();
  @override
  List<Object?> get props => [];
}

class ShoppingPageLoad extends ShoppingPageEvent {
  const ShoppingPageLoad();
}

class ProductDecrement extends ShoppingPageEvent {
  final Product product;
  const ProductDecrement(this.product);
  @override
  List<Object> get props => [product];
}

class ProductIncrement extends ShoppingPageEvent {
  final Product product;
  const ProductIncrement(this.product);
  @override
  List<Object> get props => [product];
}
