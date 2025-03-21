import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaName;
  final String pizzaStore;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String imageName;
  final Function(String, double) addToCart;

  const PizzaTile(
      {super.key,
      required this.pizzaName,
      required this.pizzaPrice,
      required this.pizzaStore,
      this.pizzaColor,
      required this.imageName,
      required this.addToCart
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: pizzaColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(24)),
        child: Column(children: [
          // Price Tag
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: pizzaColor.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24)),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  '\$$pizzaPrice',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pizzaColor),
                ),
              )
            ],
          ),
          // Pizza Picture
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Image.asset(imageName),
          ),

          // Pizza Name
          Text(
            pizzaName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),

          SizedBox(height: 4),
          // Store Name
          Text(
            pizzaStore,
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
                      addToCart(pizzaName, double.parse(pizzaPrice));
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