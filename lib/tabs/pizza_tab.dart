import 'package:donut_app_2a_ramirez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) addToCart;

  PizzaTab({super.key, required this.addToCart});

  //Lista de donas
  final List donutsOnSale = [

    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Pepperoni Pizza", "Domino's", "120", Colors.red, "lib/images/pepperoni_pizza.png"],
   ["Margherita Pizza", "Pizza Hut", "110", Colors.green, "lib/images/margherita_pizza.png"],
   ["BBQ Chicken Pizza", "Papa John's", "130", Colors.brown, "lib/images/bbq_chicken_pizza.png"],
   ["Hawaiian Pizza", "Little Caesars", "125", Colors.yellow, "lib/images/hawaiian_pizza.png"],
   ["Veggie Pizza", "Papa John's", "115", Colors.greenAccent, "lib/images/veggie_pizza.png"],
   ["Meat Lovers Pizza", "Domino's", "140", Colors.deepOrange, "lib/images/meatlovers_pizza.png"],
   ["Four Cheese Pizza", "Pizza Hut", "135", Colors.amber, "lib/images/fourcheese_pizza.png"],
   ["Supreme Pizza", "Little Caesars", "145", Colors.deepPurple, "lib/images/supreme_pizza.png"],
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