import 'package:flutter/foundation.dart';
import 'item.dart'; // Pastikan import ini ada
import 'package:intl/intl.dart';

String formatCurrency(double amount) {
  return NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 2).format(amount);
}

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items => List.unmodifiable(_items);

  double get totalPrice =>
      _items.fold(0, (total, item) => total + (item.price * item.quantity));

  void add(Item item) {
    final index = _items.indexWhere((element) => element.id == item.id);
    if (index != -1) {
      _items[index] = _items[index].copyWith(quantity: _items[index].quantity + 1);
    } else {
      _items.add(item.copyWith(quantity: 1));
    }
    notifyListeners();
  }

  void updateQuantity(Item item, int newQuantity) {
    final index = _items.indexWhere((element) => element.id == item.id);
    if (index != -1 && newQuantity > 0) {
      _items[index] = _items[index].copyWith(quantity: newQuantity);
    } else if (index != -1 && newQuantity <= 0) {
      _items.removeAt(index);
    }
    notifyListeners();
  }

  void decreaseQuantity(Item item) {
    updateQuantity(item, item.quantity - 1);
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}