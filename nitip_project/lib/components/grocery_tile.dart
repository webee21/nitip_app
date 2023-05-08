import 'package:flutter/material.dart';

class GroceryTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  GroceryTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // item image
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AspectRatio(
                  aspectRatio: 5 / 5,
                  child: Image.asset(
                    imagePath,
                    height: 30,
                    width: 30,
                  ),
                )),

            // item name
            Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            MaterialButton(
              onPressed: onPressed,
              color: Color(0xFF56A5EC),
              child: Text(
                '\$' + itemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
