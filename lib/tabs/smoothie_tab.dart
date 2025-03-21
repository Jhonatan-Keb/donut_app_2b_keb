import 'package:donut_app_2b_keb/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  // Lista de smoothies
  final List smoothiesOnSale = [
    //[smoothieName, storeName, price, color, imageName]
    [
      "Berry Boost",
      "Juice It Up",
      "90",
      Colors.purple,
      "lib/images/smoothies/berry_boost.jpg"
    ],
    [
      "Tropical Bliss",
      "Smoothie King",
      "100",
      Colors.orange,
      "lib/images/smoothies/tropical_bliss.jpg"
    ],
    [
      "Green Detox",
      "Jamba Juice",
      "110",
      Colors.green,
      "lib/images/smoothies/green_betox.jpg"
    ],
    [
      "Berry Boost",
      "Booster Juice",
      "95",
      Colors.red,
      "lib/images/smoothies/berry_boost.jpg"
    ],
    [
      "Avena & Chia",
      "Local Smoothies",
      "120",
      Colors.brown,
      "lib/images/smoothies/avena_&_chia_smoothie.jpg"
    ],
    [
      "Cafe y Almendra",
      "Juice It Up",
      "105",
      Colors.blueGrey,
      "lib/images/smoothies/cafe_y_almendra.jpg"
    ],
    [
      "Piña Colada",
      "Fresh Blends",
      "115",
      Colors.lightGreen,
      "lib/images/smoothies/pina_colada_smoothie.jpg"
    ],
    [
      "Matcha Energy",
      "Smoothie King",
      "125",
      Colors.brown,
      "lib/images/smoothies/matcha_energy.jpg"
    ],
  ];

  final Function(String, double) addToCart;

  SmoothieTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: smoothiesOnSale.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.65),
        itemBuilder: (context, index) {
          return SmoothieTile(
            smoothieName: smoothiesOnSale[index][0],
            smoothieStore: smoothiesOnSale[index][1],
            smoothiePrice: smoothiesOnSale[index][2],
            smoothieColor: smoothiesOnSale[index][3],
            imageName: smoothiesOnSale[index][4],
            addToCart: addToCart,
          );
        });
  }
}
