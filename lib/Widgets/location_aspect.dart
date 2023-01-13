import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class LocationAspect extends StatelessWidget {
  final String address;
  final String location;
  final IconData? iconData;
  final IconData? iconData1;
  const LocationAspect({
    Key? key,
    this.iconData,
    this.iconData1,
    this.address = '',
    this.location = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Location
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 7,
          ),
          decoration:
              const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          child: Icon(
            iconData1,
            color: Colors.white,
            size: 30,
          ),
        ),

        // User (Your location) Location
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$location',
              style: Styles.headLineStyle3,
            ),
            const SizedBox(height: 4),
            Text(
              '$address',
              style: Styles.headLineStyle2.copyWith(fontSize: 15),
            )
          ],
        ),
        InkWell(child: Icon(iconData))
      ],
    );
  }
}
