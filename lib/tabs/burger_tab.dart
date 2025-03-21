import 'package:donut_app_2b_keb/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(String, double) addToCart;

  BurgerTab({super.key, required this.addToCart});
  // Lista de hamburguesas
  final List burgersOnSale = [
    //[burgerName, storeName, price, color, imageName]
    [
      "Smoky BBQ Burger",
      "Burger King",
      "120",
      Colors.brown,
      "lib/images/burgers/smoky_bbq_burger.jpg"
    ],
    [
      "Guacamole Burger",
      "McDonald's",
      "110",
      Colors.green,
      "lib/images/burgers/guacamole_burger.jpg"
    ],
    [
      "Mushroom Swiss Burger",
      "Carl's Jr.",
      "130",
      Colors.grey,
      "lib/images/burgers/mushroom_swiss_burger.jpg"
    ],
    [
      "Buffalo Chicken Burger",
      "KFC",
      "125",
      Colors.orange,
      "lib/images/burgers/buffalo_chicken_burger.jpg"
    ],
    [
      "Hawaiana Burger",
      "Johnny Rockets",
      "140",
      Colors.yellow,
      "lib/images/burgers/hawaiana-burger.jpg"
    ],
    [
      "Truffle Burger",
      "Shake Shack",
      "160",
      Colors.black,
      "lib/images/burgers/truffle_burger.jpg"
    ],
    [
      "Veggie Mediterranean Burger",
      "Vegan Grill",
      "135",
      Colors.greenAccent,
      "lib/images/burgers/veggie_mediterranean_burger.jpg"
    ],
    [
      "Mac & Cheese Burger",
      "Five Guys",
      "145",
      Colors.orangeAccent,
      "lib/images/burgers/mac_&_cheese_burger.jpg"
    ],
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: burgersOnSale.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.65),
        itemBuilder: (context, index) {
          return BurgerTile(
            burgerName: burgersOnSale[index][0],
            burgerStore: burgersOnSale[index][1],
            burgerPrice: burgersOnSale[index][2],
            burgerColor: burgersOnSale[index][3],
            imageName: burgersOnSale[index][4],
            addToCart: addToCart,
          );
        });
  }
}
