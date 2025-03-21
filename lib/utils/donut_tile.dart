import 'package:flutter/material.dart';
 
class DonutTile extends StatelessWidget {
 final String donutFlavor;
 final String donutStore;
 final String donutPrice;
 final dynamic donutColor;  //dynamic porque será de tipo Color y también usará []
 final String imageName;
 final VoidCallback onTap;
 
 const DonutTile({
   super.key,
   required this.donutFlavor,
   required this.donutStore,
   required this.donutPrice,
   required this.donutColor,
   required this.imageName,
   required this.onTap,
 });
                 
 @override
 Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Container(
         decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24)),
          child: Column(
           children: [
            //PriceTag
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text('\$$donutPrice', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: donutColor[800]),
                    ),
                )
              ],
            ),
            //Donut picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
              child: Image.asset(imageName),
            ),
            //Donut flavor text
            Text(donutFlavor, 
            style: 
            TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 18),), 
            //Espacio entre textos
            SizedBox(
              height: 4,
            ),
            Text(donutStore, style: TextStyle(color: Colors.grey[600])),
            //Love icon + add button
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween, //Alineación
               children: [
                 Icon(Icons.favorite_border, color: Colors.pink[400],),
                 GestureDetector(
                    onTap: onTap,
                    child: 
                  Text( 
                    "add",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, decoration: TextDecoration.underline,)
                    ),
                 ),
               ],
             ),
           )
           ],
        ),
     ),
   );
 }
}