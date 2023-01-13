import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Bottom_navigation/bottom_navigation.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
       
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
                    vertical: 20,
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
                            'Orders',
                            style: Styles.headLineStyle1,
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      const TabBar(indicatorColor: Colors.green, tabs: [
                        Tab(
                          text: 'Ongoing',
                        ),
                        Tab(
                          text: 'History',
                        ),
                      ]),
                      const SizedBox(height: 40),
                      //Container Tab
                      const OrderContainerWidget(
                        orderText: 'Order #345',
                        orderStatus: 'Delivered',
                        orderDate: 'October 26, 2014',
                        orderPrice: '\$20',
                      ),
                      const Divider(),
                      const OrderContainerWidget(
                        orderText: 'Order #345',
                        orderStatus: 'Cancelled',
                        statusTextColor: Colors.red,
                        orderDate: 'October 30, 2014',
                        orderPrice: '\$30',
                      ),
                      const Divider(),
                      const OrderContainerWidget(
                        orderText: 'Order #345',
                        orderStatus: 'Delivered',
                        statusTextColor: Colors.green,
                        orderDate: 'July 12, 2015',
                        orderPrice: '\$15',
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OrderContainerWidget extends StatelessWidget {
  final String orderText, orderStatus, orderDate, orderPrice;
  final Color? statusTextColor;

  const OrderContainerWidget({
    Key? key,
    required this.orderText,
    required this.orderStatus,
    required this.orderDate,
    required this.orderPrice,
    this.statusTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: Colors.orange, shape: BoxShape.circle),
                child: const Icon(
                  Icons.shopping_basket_outlined,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderText,
                    style: Styles.headLineStyle5,
                  ),
                  Text(
                    orderStatus,
                    style: Styles.headLineStyle6.copyWith(
                        fontWeight: FontWeight.w500, color: statusTextColor),
                  ),
                  Text(
                    orderDate,
                    style: Styles.headLineStyle6
                        .copyWith(fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
          ),
          Text(
            orderPrice,
            style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
