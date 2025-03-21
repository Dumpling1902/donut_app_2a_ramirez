import 'package:donut_app_2a_ramirez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(double) addToCart;

  DonutTab({super.key, required this.addToCart});

  //Lista de donas
  final List donutsOnSale = [

    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry", "Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape", "Krispy Kreme", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco", "Dunkin donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
   ["Vanilla", "Krispy Kreme", "50", Colors.redAccent, "lib/images/vanilla_donut.png"],
   ["Blueberrie", "Dunkin donuts", "40", Colors.blueAccent, "lib/images/blueberry_donut.png"],
   ["Brownie", "Krispy Kreme", "90", Colors.brown, "lib/images/brownie_donut.png"],
   ["Maple", "Dunkin donuts", "55", Colors.amber, "lib/images/maple_donut.png"],

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