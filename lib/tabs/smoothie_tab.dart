import 'package:donut_app_2a_ramirez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) addToCart;

  SmoothieTab({super.key, required this.addToCart});

  //Lista de donas
  final List donutsOnSale = [

    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Strawberry Smoothie", "Jamba Juice", "55", Colors.red, "lib/images/strawberry_smoothie.png"],
   ["Mango Smoothie", "Smoothie King", "60", Colors.orange, "lib/images/mango_smoothie.png"],
   ["Blueberry Smoothie", "Jamba Juice", "65", Colors.blue, "lib/images/blueberry_smoothie.png"],
   ["Green Detox", "Smoothie King", "70", Colors.green, "lib/images/green_smoothie.png"],
   ["Apple Smoothie", "Boost Juice", "50", Colors.deepOrange, "lib/images/apple_smoothie.png"],
   ["Watermelon Smoothie", "Planet Smoothie", "75", Colors.redAccent, "lib/images/watermelon_smoothie.png"],
   ["Grape Smoothie", "Jamba Juice", "80", Colors.purple, "lib/images/grape_smoothie.png"],
   ["Pineapple Coconut", "Smoothie King", "85", Colors.amber, "lib/images/pineapple_smoothie.png"],
  ];
  

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Cuántos elementos tiene
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      //Encargado de organizar la cuadrícula
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //Determina número de columnas
      crossAxisCount: 2,
      //Relacion de aspecto
      childAspectRatio: 1 / 1.5
      ),
    itemBuilder: (context, index) {
      //Elemento individual de la cuadrícula
      return DonutTile(
        donutFlavor: donutsOnSale[index][0],
        donutStore: donutsOnSale[index][1],
        donutPrice: donutsOnSale[index][2],
        donutColor: donutsOnSale[index][3],
        imageName: donutsOnSale[index][4],
        onTap: () {
            double price = double.tryParse(donutsOnSale[index][2]) ?? 0;
            addToCart(price);
            },

      );
    
    });
  }
}