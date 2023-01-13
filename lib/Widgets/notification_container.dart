import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class NotificationsContainer extends StatelessWidget {
  final String orderText;
  final String timeText;
  final String detailsText;
  final IconData iconData;
  final Color? isColor;
  final Color? isColorContainer;
  const NotificationsContainer({
    Key? key,
    required this.orderText,
    required this.timeText,
    required this.detailsText,
    required this.iconData,
    this.isColor, this.isColorContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isColorContainer,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // top horizontal roll
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                orderText,
                style: Styles.headLineStyle5,
              ),
              Text(
                timeText,
                style:
                    Styles.headLineStyle6.copyWith(fontWeight: FontWeight.w400),
              )
            ],
          ),
          // top horizontal roll
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                detailsText,
                style: Styles.headLineStyle3,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isColor,
                ),
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
