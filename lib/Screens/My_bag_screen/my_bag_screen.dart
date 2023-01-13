import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/bag_charge.dart';
import 'package:grocery_plus_app_ui/Widgets/bottom_button.dart';
import 'package:grocery_plus_app_ui/Widgets/counter_increase.dart';
import 'package:grocery_plus_app_ui/Widgets/location_aspect.dart';
import 'package:grocery_plus_app_ui/Widgets/time_container.dart';
import 'package:table_calendar/table_calendar.dart';

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();

    void _onDaySelected(DateTime day, DateTime focusedDay) {
      today = day;
    }

    return Scaffold(
      body: ListView(children: [
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'My Bag',
                        style: Styles.headLineStyle1,
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        'Products',
                        style: Styles.headLineStyle2,
                      )
                    ],
                  ),

                  const SizedBox(height: 35),
                  //Products section
                  //Image with discount tag
                  Stack(
                    children: [
                      const OtherProductsDetails(
                          image: 'images/Dano.png',
                          title: 'Arla DANO Full Cream\nMilk Powder Instant',
                          oldPrice: '\$25',
                          newPrice: '\$17'),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle),
                          child: Text(
                            '20%\nOFF',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 90, left: 225),
                        child: Counter(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  //Image without discount tag
                  Stack(
                    children: const [
                      OtherProductsDetails(
                          image: 'images/Nido.png',
                          title: 'Nestle NIDO Full Cream\nMilk Powder Instant',
                          oldPrice: '\$15',
                          newPrice: '\$10'),
                      Padding(
                        padding: EdgeInsets.only(top: 90, left: 225),
                        child: Counter(),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                  //Add more product
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green.shade100),
                      child: Center(
                        child: Text(
                          'Add More Product',
                          style: Styles.headLineStyle5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Text(
                        'Expected Date & Time',
                        style: Styles.headLineStyle5,
                      ),
                    ],
                  ),
                  //Calendar section
                  const SizedBox(height: 20),
                  Container(
                    child: TableCalendar(
                      locale: 'en_US',
                      rowHeight: 43,
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                      availableGestures: AvailableGestures.all,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                      focusedDay: today,
                      firstDay: DateTime.utc(2020, 10, 12),
                      lastDay: DateTime.utc(2025, 6, 12),
                      onDaySelected: _onDaySelected,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.calendar_month_outlined),
                        Text('Select Date'),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TimeContainerSection(),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Location',
                        style: Styles.headLineStyle5,
                      ),
                      Text(
                        'Change',
                        style:
                            Styles.headLineStyle5.copyWith(color: Colors.green),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  //Location address
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Location
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 20),

                      // User (Your location) Location
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Floor 4, Wakil Tower, Ta 131 Gulshan\nBadda Link Road',
                            style: Styles.headLineStyle2.copyWith(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),

                  //Charges part
                  const SizedBox(height: 30),
                  const BagCharges(
                    text: 'Subtotal',
                    chargeDetails: 'BDT362',
                    text1: 'Delivery Charge',
                    chargeDetails1: 'BDT50',
                    total: 'Total',
                    totalCharge: 'BDT412',
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        'Payment Method',
                        style: Styles.headLineStyle5,
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: const LocationAspect(
                      iconData1: Icons.currency_pound_sharp,
                      address: 'Tap here to select your\nPayment Method',
                      iconData: Icons.arrow_forward_ios_outlined,
                    ),
                  ),
                  const SizedBox(height: 50),

                  GestureDetector(
                    child: const BottomButton(
                      text: 'Place Order',
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}

class OtherProductsDetails extends StatefulWidget {
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
  State<OtherProductsDetails> createState() => _OtherProductsDetailsState();
}

class _OtherProductsDetailsState extends State<OtherProductsDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                image: AssetImage(widget.image),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Styles.headLineStyle5,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.oldPrice,
                    style: Styles.headLineStyle3,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        widget.newPrice,
                        style: Styles.headLineStyle1
                            .copyWith(color: Colors.orange),
                      ),
                      const SizedBox(width: 10),
                      //Counter section
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

//Counter Class Section
