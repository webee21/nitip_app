import 'package:flutter/material.dart';

class PancakeModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Pancake Special", "4.00", "lib/images/pancake_3.jpg", Color(0xFF56A5EC)],
    ["Giant Pancake", "15.50", "lib/images/pancake_2.jpg", Color(0xFF56A5EC)],
    [
      "Pancake Special L",
      "12.80",
      "lib/images/pancake_3.jpg",
      Color(0xFF56A5EC)
    ],
    ["Love Pancake", "1.00", "lib/images/pancake.jpg", Color(0xFF56A5EC)],
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
