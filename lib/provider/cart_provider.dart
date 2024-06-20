import 'package:coffeeappui/util/coffee_tile.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<CoffeeTile> _items = [];

  List<CoffeeTile> get items => _items;

  void add(CoffeeTile items) {
    _items.add(items);
    notifyListeners();
  }

  void remove(CoffeeTile items) {
    _items.remove(items);
    notifyListeners();
  }

  void removeAll(CoffeeTile items) {
    _items.clear();
    notifyListeners();
  }

  // double getCartTotal() {
  //   return _items.fold(
  //       0, (previousValue, item) => previousValue + items.coffeePrice);
  // }
}
