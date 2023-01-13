import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Bottom_navigation/bottom_navigation.dart';

import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/other_products.dart';

class DanoProduct extends StatefulWidget {
  const DanoProduct({super.key});

  @override
  State<DanoProduct> createState() => _DanoProductState();
}

class _DanoProductState extends State<DanoProduct> {
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
                  horizontal: 20,
                  vertical: 35,
                ),
                child: Column(
                  children: [
                    //Back to home screen navigation
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BottomNavigation()));
                            });
                          },
                          child: const Icon(Icons.arrow_back),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Product Details',
                          style: Styles.headLineStyle2,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    //Milk big image
                    Container(
                      height: 308,
                      width: 294,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ],
                          image: const DecorationImage(
                              image: AssetImage('images/Dano.png'))),
                    ),
                    const SizedBox(height: 20),
                    //Choose color section
                    Row(
                      children: [
                        Container(
                          height: 66,
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              color: Styles.primaryColor,
                              width: 2,
                            ),
                            image: const DecorationImage(
                              image: AssetImage('images/Dano.png'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 66,
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            image: const DecorationImage(
                              image: AssetImage('images/Dano.png'),
                            ),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 20),
                    Text(
                      'Arla DANO Full Cream Milk Powder Instant',
                      style: Styles.headLineStyle2,
                    ),
                    const SizedBox(height: 20),
                    // Kilogram and price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1KG',
                          style: Styles.headLineStyle2,
                        ),
                        Text(
                          '\$10',
                          style: Styles.headLineStyle2,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.sort,
                          color: Styles.textColor,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Diary Products',
                          style: Styles.headLineStyle5,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    //Details part
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Styles.textColor,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Et quidem faciunt, ut summum bonum sit \nextremum et rationibus conquisitis de \nvoluptate. Sed ut summum bonum sit id,',
                          style: Styles.headLineStyle5,
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    Row(
                      children: [
                        Text(
                          'You can also check these items',
                          style: Styles.headLineStyle5.copyWith(fontSize: 17),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    //Other product details
                    //Nestle Nido part
                    GestureDetector(
                      child: const OtherProductsDetails(
                        image: 'images/Nido.png',
                        title: 'Nestle Nido Full Cream\nMilk Powder Instant',
                        oldPrice: '\$15',
                        newPrice: '\$10',
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      child: const OtherProductsDetails(
                        image: 'images/Dano.png',
                        title: 'Nestle Dano Full Cream\nMilk Powder Instant',
                        oldPrice: '\$25',
                        newPrice: '\$17',
                      ),
                    ),
                    //Bottom button part
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavigation()));
                        });
                      },
                      //Bottom button
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Styles.primaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: Stack(
                            children: [
                              Center(
                                child: Text(
                                  'Add to bag',
                                  style: Styles.headLineStyle2
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              //const SizedBox(width: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: const [
                                  Spacer(),
                                  Icon(
                                    Icons.shopping_bag_sharp,
                                    color: Colors.white,
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
