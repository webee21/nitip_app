import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    [
      "Curry Chicken Rice L",
      "7.00",
      "lib/images/curry_3.png",
      Color(0xFF56A5EC)
    ],
    [
      "Curry Rice Vegetables",
      "5.50",
      "lib/images/curry_2.png",
      Color(0xFF56A5EC)
    ],
    ["Curry Chicken Rice", "5.80", "lib/images/curry_3.png", Color(0xFF56A5EC)],
    ["Curry Katsu Rice", "6.00", "lib/images/curry_4.png", Color(0xFF56A5EC)],
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
