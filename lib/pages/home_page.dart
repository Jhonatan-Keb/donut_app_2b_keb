import 'package:donut_app_2b_keb/tabs/burger_tab.dart';
import 'package:donut_app_2b_keb/tabs/donut_tab.dart';
import 'package:donut_app_2b_keb/tabs/pancackes_tab.dart';
import 'package:donut_app_2b_keb/tabs/pizza_tab.dart';
import 'package:donut_app_2b_keb/tabs/smoothie_tab.dart';
import 'package:donut_app_2b_keb/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Lista de tabs
  List<Widget> myTabs = [
    //DonutTab
    MyTab(iconPath: 'lib/icons/donut.png'),
    //BurgerTab
    MyTab(iconPath: 'lib/icons/burger.png'),
    //SmoothieTab
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    //PanCakeTab
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    //PizzaTab
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            //Icono izquierdo
            leading: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
            //Icono derecho
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
              )
            ],
          ),
          body: Column(
            children: [
              //Texto principal
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                child: Row(
                  children: [
                    Text("I want to ", style: TextStyle(fontSize: 32)),
                    Text("Eat",
                        style: TextStyle(
                            //Tamaño de letra
                            fontSize: 32,
                            //Negrita
                            fontWeight: FontWeight.bold,
                            //Subrayado
                            decoration: TextDecoration.underline))
                  ],
                ),
              ),

              //TabBar (Barra de pestañas)
              TabBar(tabs: myTabs),
              //Tab BarView (Contenido de pestañas)
              Expanded(
                child: TabBarView(children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancackesTab(),
                  PizzaTab()
                ]),
              ),

              //Carrito
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                child: Row(
                  // Poner los elementos en los extremos de la fila
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Column(
                          // Alinearlo a la izquierda
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2 Items | \$45',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Delivery Charges Included",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12)),
                      child: const Text(
                        'View Cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
