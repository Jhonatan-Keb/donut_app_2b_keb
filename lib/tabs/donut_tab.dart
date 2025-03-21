import 'package:donut_app_2b_keb/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
    final Function(String, double) addToCart;

  DonutTab({super.key, required this.addToCart});
  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor,I donutStore, donutPrice, donutColor, imageName]
    [
      "Ice Cream",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/donuts/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/donuts/strawberry_donut.png"
    ],
    [
      "Grape Ape",
      "Cotsco",
      "84",
      Colors.purple,
      "lib/images/donuts/grape_donut.png"
    ],
    [
      "Choco",
      "Walmart",
      "95",
      Colors.brown,
      "lib/images/donuts/chocolate_donut.png"
    ],

    [
      "Blue",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/donuts/blue_donut.png"
    ],
    [
      "Flower",
      "Dunkin Donuts",
      "45",
      Colors.red,
      "lib/images/donuts/flower_donut.png"
    ],
    [
      "Heart",
      "Cotsco",
      "84",
      Colors.purple,
      "lib/images/donuts/heart_donut.png"
    ],
    ["X", "Walmart", "95", Colors.brown, "lib/images/donuts/x_donut.png"],
  ];


  @override
  Widget build(BuildContext context) {
    // Para acomodar elementos en cuadricula
    return GridView.builder(
        //Cuantos elementos tengo
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(8.0),
        //Prepa 1: Organiza como distribuir elementos en la cuadricula
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Numero de colummnas
            crossAxisCount: 2,
            //Relación de aspecto (Proporción)
            childAspectRatio: 1 / 1.65),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFLavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
            addToCart: addToCart,
          );
        });
  }
}
