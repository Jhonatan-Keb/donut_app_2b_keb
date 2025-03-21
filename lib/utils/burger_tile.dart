import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerName;
  final String burgerStore;
  final String burgerPrice;
  final dynamic burgerColor;
  final String imageName;
  final Function(String, double) addToCart;

  const BurgerTile(
      {super.key,
      required this.burgerName,
      required this.burgerPrice,
      required this.burgerStore,
      this.burgerColor,
      required this.imageName,
      required this.addToCart
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: burgerColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(24)),
        child: Column(children: [
          // Price Tag
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: burgerColor.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24)),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  '\$$burgerPrice',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: burgerColor),
                ),
              )
            ],
          ),
          // Burger Picture
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Image.asset(imageName),
          ),

          // Burger Name
          Text(
            burgerName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),

          SizedBox(height: 4),
          // Store Name
          Text(
            burgerStore,
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
                      addToCart(burgerName, double.parse(burgerPrice));
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