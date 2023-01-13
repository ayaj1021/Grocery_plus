import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class OtherProductsDetails extends StatelessWidget {
  final String image;
  final String title;
  final String oldPrice;
  final String newPrice;
  const OtherProductsDetails({
    Key? key,
    required this.image,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 0.5,
              spreadRadius: 0.5,
            )
          ]),
      child: Row(
        children: [
          Container(
            height: 121,
            width: 115,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.headLineStyle5,
              ),
              const SizedBox(height: 10),
              Text(
                oldPrice,
                style: Styles.headLineStyle3,
              ),
              const SizedBox(height: 5),
              Text(
                newPrice,
                style: Styles.headLineStyle1.copyWith(color: Colors.orange),
              ),
            ],
          )
        ],
      ),
    );
  }
}
