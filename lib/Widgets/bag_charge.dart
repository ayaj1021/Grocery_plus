import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class BagCharges extends StatelessWidget {
  final String text, text1, total;
  final String chargeDetails, chargeDetails1, totalCharge;

  const BagCharges(
      {super.key,
      required this.text,
      required this.chargeDetails,
      required this.text1,
      required this.chargeDetails1,
      required this.total,
      required this.totalCharge});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Styles.headLineStyle7,
            ),
            Text(
              chargeDetails,
              style: Styles.headLineStyle7,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text1, style: Styles.headLineStyle7),
            Text(chargeDetails1, style: Styles.headLineStyle7),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(total,
                style: Styles.headLineStyle7
                    .copyWith(fontWeight: FontWeight.bold)),
            Text(totalCharge,
                style: Styles.headLineStyle7
                    .copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
