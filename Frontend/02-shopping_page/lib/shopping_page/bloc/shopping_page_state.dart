part of 'shopping_page_bloc.dart';

@immutable
abstract class ShoppingPageState extends Equatable {
  const ShoppingPageState();
  @override
  List<Object?> get props => [];
}

class ShoppingPageInitial extends ShoppingPageState {
  const ShoppingPageInitial();
}

class ShoppingPageLoaded extends ShoppingPageState {
  final List<Product> products;
  const ShoppingPageLoaded({required this.products});

  @override
  List<Object?> get props => [products];
}

class ShoppingPageError extends ShoppingPageState {
  const ShoppingPageError();
}
