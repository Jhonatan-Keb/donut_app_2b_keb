import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeFlavor;
  final String pancakeStore;
  final String pancakePrice;
  final dynamic pancakeColor;
  final String imageName;
  final Function(String, double) addToCart;

  const PancakeTile(
      {super.key,
      required this.pancakeFlavor,
      required this.pancakePrice,
      required this.pancakeStore,
      this.pancakeColor,
      required this.imageName,
      required this.addToCart
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: pancakeColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: pancakeColor[200],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24)),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  '\$$pancakePrice',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pancakeColor[800]),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Image.asset(imageName),
          ),
          Text(
            pancakeFlavor,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            pancakeStore,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
           Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border, color: Colors.pink[400]),
                  GestureDetector(
                    onTap: () {
                      // Agregar al carrito
                      addToCart(pancakeFlavor, double.parse(pancakePrice));
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