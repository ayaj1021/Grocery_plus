import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Bottom_navigation/bottom_navigation.dart';
import 'package:grocery_plus_app_ui/Screens/My_bag_screen/my_bag_screen.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class MyWishList extends StatefulWidget {
  const MyWishList({super.key});

  @override
  State<MyWishList> createState() => _MyWishListState();
}

class _MyWishListState extends State<MyWishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Colors.white54,
                      Color(0xffefe9e9),
                      Color(0xffdfebed),
                      Color(0xfff4d4d0),
                    ]),
                    border: Border.all(color: Colors.transparent)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BottomNavigation()));
                              });
                            },
                            child: const Icon(Icons.arrow_back)),
                        const SizedBox(width: 20),
                        Text(
                          'Wishlist',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const OtherProductsDetails(
                        image: 'images/Nido.png',
                        title: 'Nestle NIDO Full Cream\nMilk Powder Instant',
                        oldPrice: '\$15',
                        newPrice: '\$10'),
                    const SizedBox(height: 30),
                    const OtherProductsDetails(
                        image: 'images/Dano.png',
                        title: 'Nestle DANO Full Cream\nMilk Powder Instant',
                        oldPrice: '\$15',
                        newPrice: '\$10'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
