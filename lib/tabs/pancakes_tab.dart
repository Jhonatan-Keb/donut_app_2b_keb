import 'package:flutter/material.dart';
import 'package:donut_app_2b_keb/utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  
  // Lista de pancakes
  final List pancakesOnSale = [
    [
      "Clásicos con miel de maple",
      "Restaurante A",
      "36",
      Colors.blue,
      "lib/images/pancakes/clásicos_con_miel_de_maple.jpg"
    ],
    [
      "Red Velvet Pancakes",
      "Restaurante B",
      "45",
      Colors.red,
      "lib/images/pancakes/red_velvet_pancakes.jpg"
    ],
    [
      "Blueberry Explosion",
      "Restaurante C",
      "84",
      Colors.purple,
      "lib/images/pancakes/blueberry_explosion.jpg"
    ],
    [
      "Choco-Banana",
      "Restaurante D",
      "95",
      Colors.brown,
      "lib/images/pancakes/choco_banana.jpg"
    ],
    [
      "Manzana & Canela",
      "Restaurante E",
      "36",
      Colors.green,
      "lib/images/pancakes/manzana_&_canela.jpg"
    ],
    [
      "S’mores Pancakes",
      "Restaurante F",
      "45",
      Colors.orange,
      "lib/images/pancakes/s’mores_pancakes.jpg"
    ],
    [
      "Pancakes Proteicos",
      "Restaurante G",
      "84",
      Colors.yellow,
      "lib/images/pancakes/pancakes_proteicos.jpg"
    ],
    [
      "Dulce de leche y nueces",
      "Restaurante H",
      "95",
      Colors.brown,
      "lib/images/pancakes/dulce_de_leche_y_nueces.jpg"
    ],
  ];

  final Function(String, double) addToCart;

  PancakeTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    // Para acomodar elementos en cuadricula
    return GridView.builder(
        // Cuantos elementos tengo
        itemCount: pancakesOnSale.length,
        padding: const EdgeInsets.all(8.0),
        // Prepa 1: Organiza como distribuir elementos en la cuadricula
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // Número de columnas
            crossAxisCount: 2,
            // Relación de aspecto (Proporción)
            childAspectRatio: 1 / 1.65),
        itemBuilder: (context, index) {
          return PancakeTile(
            pancakeFlavor: pancakesOnSale[index][0],
            pancakeStore: pancakesOnSale[index][1],
            pancakePrice: pancakesOnSale[index][2],
            pancakeColor: pancakesOnSale[index][3],
            imageName: pancakesOnSale[index][4],
            addToCart: addToCart,
          );
        });
  }
}
