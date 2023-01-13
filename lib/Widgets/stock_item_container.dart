import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class StockItems extends StatelessWidget {
  const StockItems({super.key, required this.text, required this.image});
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 160,
        width: 165,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 1,
                spreadRadius: 1,
              )
            ]),
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              height: 110,
              width: 66,
            ),
            Text(
              text,
              style: Styles.headLineStyle3,
            )
          ],
        ));
  }
}
