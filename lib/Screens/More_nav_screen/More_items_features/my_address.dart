import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Bottom_navigation/bottom_navigation.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/bottom_button.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({super.key});

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
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
                        'My Address',
                        style: Styles.headLineStyle1,
                      )
                    ],
                  ),
                  const SizedBox(height: 90),
                  const AddressContainerWidget(
                    text: 'Home',
                    text1: '51/5A, Road: 7, Pallabi, Dhaka ',
                    iconData: Icons.edit_outlined,
                    iconData1: Icons.delete_outline,
                  ),
                  const Divider(
                    height: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  const AddressContainerWidget(
                    text: 'Work',
                    text1: 'Dingi Technologies Ltd, Wakil T ',
                    iconData: Icons.edit_outlined,
                    iconData1: Icons.delete_outline,
                  ),
                  const SizedBox(height: 410),
                  const BottomButton(
                    text: 'Add New Address',
                    iconData: Icons.add,
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}

class AddressContainerWidget extends StatelessWidget {
  final String text, text1;
  final IconData iconData, iconData1;
  const AddressContainerWidget({
    Key? key,
    required this.text,
    required this.text1,
    required this.iconData,
    required this.iconData1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(8),
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.shade100,
      //         spreadRadius: 1,
      //         blurRadius: 1,
      //       )
      //     ]),
      padding: const EdgeInsets.all(10),
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: Styles.headLineStyle5,
              ),
              // const SizedBox(height: 10),
              Text(
                text1,
                style: Styles.headLineStyle3,
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  iconData1,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
