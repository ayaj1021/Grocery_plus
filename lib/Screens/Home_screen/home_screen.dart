import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/App_Responsivenss/app_res.dart';
import 'package:grocery_plus_app_ui/Screens/Home_screen/notification_page.dart';

import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/location_aspect.dart';
import 'package:grocery_plus_app_ui/Widgets/product_aspect_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    AppRes(context);
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Grocery Plus',
                          style: Styles.headLineStyle1,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NotificationBellPage()));
                              });
                            },
                            child: const Icon(Icons.notifications_outlined)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    //Location address
                    const LocationAspect(
                      iconData: Icons.arrow_forward_ios_outlined,
                      iconData1: Icons.location_on_outlined,
                      address: '32 Llanberis Close,Tonteg, CF381HR',
                      location: 'Your location',
                    ),
                    //Search section
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(8)),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: 'Search Anything',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                    const SizedBox(height: 40),
                    //Stock items section
                    const ProductsAspectSection()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
