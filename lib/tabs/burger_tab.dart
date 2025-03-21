import 'package:donut_app_2a_ramirez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) addToCart;

  BurgerTab({super.key, required this.addToCart});

  //Lista de donas
  final List donutsOnSale = [

    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Classic Burger", "McDonald's", "80", Colors.brown, "lib/images/classic_burger.png"],
   ["Cheese Burger", "Burger King", "85", Colors.yellow, "lib/images/cheese_burger.png"],
   [ "BBQ Bacon", "Wendy's", "95", Colors.redAccent, "lib/images/bbq_bacon_burger.png"],
   ["Double Patty", "Five Guys", "120", Colors.orange, "lib/images/double_patty_burger.png"],
   ["Veggie Burger", "Subway", "70", Colors.green, "lib/images/veggie_burger.png"],
   ["Spicy Burger", "Carl's Jr.", "90", Colors.red, "lib/images/spicy_burger.png"],
   ["Mushroom Swiss", "Shake Shack", "100", Colors.grey, "lib/images/mushroom_swiss_burger.png"],
   ["Ultimate Burger", "Hardee's", "130", Colors.blueGrey, "lib/images/ultimate_burger.png"],
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