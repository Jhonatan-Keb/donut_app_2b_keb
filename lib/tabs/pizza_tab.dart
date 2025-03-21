import 'package:donut_app_2b_keb/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  // Lista de pizzas
  final List pizzasOnSale = [
    //[pizzaName, storeName, price, color, imageName]
    [
      "BBQ Chicken Pizza",
      "Domino's",
      "150",
      Colors.brown,
      "lib/images/pizzas/bbq_chicken_pizza.jpg"
    ],
    [
      "Margherita Clásica",
      "Little Caesars",
      "130",
      Colors.red,
      "lib/images/pizzas/margherita_clasica.jpg"
    ],
    [
      "Meat Lover’s Pizza",
      "Pizza Hut",
      "170",
      Colors.deepOrange,
      "lib/images/pizzas/meat_lover’s_pizza .jpg"
    ],
    [
      "Trufa y Setas",
      "Gourmet Pizzeria",
      "190",
      Colors.grey,
      "lib/images/pizzas/trufa_y_setas .jpg"
    ],
    [
      "Mexicana",
      "Papa John's",
      "160",
      Colors.green,
      "lib/images/pizzas/mexicana.jpg"
    ],
    [
      "Pesto Delight",
      "Vegan Pizza Co.",
      "180",
      Colors.lightGreen,
      "lib/images/pizzas/pesto_delight.jpg"
    ],
    [
      "Hawaiana Especial",
      "Domino's",
      "155",
      Colors.yellow,
      "lib/images/pizzas/hawaiana_con_toque_especial.jpg"
    ],
    [
      "Pizza Carbonara",
      "Italian Bistro",
      "175",
      Colors.white,
      "lib/images/pizzas/pizza_carbonara.jpg"
    ],
  ];

  final Function(String, double) addToCart;

  PizzaTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pizzasOnSale.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.65),
        itemBuilder: (context, index) {
          return PizzaTile(
            pizzaName: pizzasOnSale[index][0],
            pizzaStore: pizzasOnSale[index][1],
            pizzaPrice: pizzasOnSale[index][2],
            pizzaColor: pizzasOnSale[index][3],
            imageName: pizzasOnSale[index][4],
            addToCart: addToCart,
          );
        });
  }
}
