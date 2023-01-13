import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final IconData? iconData;
  const BottomButton({
    Key? key,
    required this.text,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Styles.primaryColor, borderRadius: BorderRadius.circular(8)),
      child: Stack(
        children: [
          Center(
            child: Text(
              text,
              style: Styles.headLineStyle5.copyWith(color: Colors.white),
            ),
          ),
          //const SizedBox(width: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Icon(
                iconData,
                color: Colors.white,
                size: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
