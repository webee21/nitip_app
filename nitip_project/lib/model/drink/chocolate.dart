import 'package:flutter/material.dart';

class ChocolateModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Floats", "4.00", "lib/images/coklat_2.jpg", Color(0xFF56A5EC)],
    ["Hot", "3.50", "lib/images/coklat_3.jpg", Color(0xFF56A5EC)],
    ["Chocomint", "4.00", "lib/images/coklat_2.jpg", Color(0xFF56A5EC)],
    ["Latte", "4.00", "lib/images/coklat_2.jpg", Color(0xFF56A5EC)],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
