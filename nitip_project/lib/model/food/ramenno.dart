import 'package:flutter/material.dart';

class RamenModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", "lib/images/ayam_3.png", Color(0xFF56A5EC)],
    ["Banana", "2.50", "lib/images/curry_2.png", Color(0xFF56A5EC)],
    ["Chicken", "12.80", "lib/images/curry_3.png", Color(0xFF56A5EC)],
    ["Water", "1.00", "lib/images/pizza.png", Color(0xFF56A5EC)],
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