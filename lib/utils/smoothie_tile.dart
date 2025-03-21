import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieName;
  final String smoothieStore;
  final String smoothiePrice;
  final dynamic smoothieColor;
  final String imageName;
  final Function(String, double) addToCart;

  const SmoothieTile(
      {super.key,
      required this.smoothieName,
      required this.smoothiePrice,
      required this.smoothieStore,
      this.smoothieColor,
      required this.imageName,
      required this.addToCart
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: smoothieColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(24)),
        child: Column(children: [
          // Price Tag
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: smoothieColor.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24)),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  '\$$smoothiePrice',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: smoothieColor),
                ),
              )
            ],
          ),
          // Smoothie Picture
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Image.asset(imageName),
          ),

          // Smoothie Name
          Text(
            smoothieName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),

          SizedBox(height: 4),
          // Store Name
          Text(
            smoothieStore,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          // Favorite & Add Button
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border, color: Colors.pink[400]),
                  GestureDetector(
                    onTap: () {
                      // Agregar al carrito
                      addToCart(smoothieName, double.parse(smoothiePrice));
                    },
                  child: const Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}