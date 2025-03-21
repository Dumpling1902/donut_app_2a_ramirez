import 'package:donut_app_2a_ramirez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(double) addToCart;

  PancakesTab({super.key, required this.addToCart});


  //Lista de donas
  final List donutsOnSale = [

    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Classic Pancakes", "IHOP", "50", Colors.brown, "lib/images/classic_pancakes.png"],
   ["Chocolate Chip", "Denny's", "60", Colors.brown, "lib/images/choco_pancakes.png"],
   ["Blueberry Pancakes", "IHOP", "55", Colors.blue, "lib/images/blueberry_pancakes.png"],
   ["Strawberry Delight", "Denny's", "65", Colors.red, "lib/images/strawberry_pancakes.png"],
   ["Banana Nut", "Waffle House", "70", Colors.yellow, "lib/images/banana_pancakes.png"],
   ["Maple Syrup Pancakes", "Cracker Barrel", "75", Colors.amber, "lib/images/maple_pancakes.png"],
   ["Caramel Pancakes", "IHOP", "80", Colors.orange, "lib/images/caramel_pancakes.png"],
   ["Red Velvet Pancakes", "Denny's", "85", Colors.redAccent, "lib/images/redvelvet_pancakes.png"],
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