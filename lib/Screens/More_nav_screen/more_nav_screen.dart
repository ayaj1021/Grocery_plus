import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/More_nav_screen/More_items_features/Chat_with_us/chat_with_us.dart';
import 'package:grocery_plus_app_ui/Screens/More_nav_screen/More_items_features/edit_profile.dart';
import 'package:grocery_plus_app_ui/Screens/More_nav_screen/More_items_features/my_address.dart';
import 'package:grocery_plus_app_ui/Screens/More_nav_screen/More_items_features/my_orders.dart';
import 'package:grocery_plus_app_ui/Screens/More_nav_screen/More_items_features/my_wishlist.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class MoreNavScreen extends StatefulWidget {
  const MoreNavScreen({super.key});

  @override
  State<MoreNavScreen> createState() => _MoreNavScreenState();
}

class _MoreNavScreenState extends State<MoreNavScreen> {
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'More',
                          style: Styles.headLineStyle1,
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/Face.jpg'),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Joan Pierce',
                              style: Styles.headLineStyle8,
                            ),
                            Text(
                              '01XXXXXXXXXXXX',
                              style: Styles.headLineStyle7
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 60),
                    const MoreNavIconText()
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

class MoreNavIconText extends StatelessWidget {
  const MoreNavIconText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const EditProfile()));
          }),
          child: const IconTextNav(
            iconData: Icons.edit_outlined,
            iconColor: Colors.blue,
            text: 'Edit Profile',
          ),
        ),
        const SizedBox(height: 30),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyAddress()));
          },
          child: const IconTextNav(
            iconData: Icons.location_on_outlined,
            text: 'My Address',
          ),
        ),
        const SizedBox(height: 30),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyOrders()));
          },
          child: const IconTextNav(
            iconData: Icons.shopping_basket_outlined,
            text: 'My Orders',
          ),
        ),
        const SizedBox(height: 30),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyWishList()));
          },
          child: const IconTextNav(
            iconData: Icons.bolt_outlined,
            text: 'My Wishlist',
          ),
        ),
        const SizedBox(height: 30),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ChatWithUs()));
          },
          child: const IconTextNav(
            iconData: Icons.messenger_outline,
            iconColor: Colors.green,
            text: 'Chat with us',
          ),
        ),
        const SizedBox(height: 30),
        const IconTextNav(
          iconData: Icons.call_outlined,
          iconColor: Colors.orange,
          text: 'Talk to our Support',
        ),
        const SizedBox(height: 30),
        const IconTextNav(
          iconData: Icons.mail_outline,
          text: 'Mail to us',
        ),
        const SizedBox(height: 30),
        const IconTextNav(
          iconData: Icons.facebook,
          iconColor: Colors.blue,
          text: 'Message to facebook page',
        ),
        const SizedBox(height: 30),
        const IconTextNav(
          iconData: Icons.power_settings_new,
          iconColor: Colors.red,
          text: 'Log out',
        ),
      ],
    );
  }
}

class IconTextNav extends StatelessWidget {
  final IconData iconData;
  final Color? iconColor;
  final String text;
  const IconTextNav({
    Key? key,
    required this.iconData,
    required this.text,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 25,
          color: iconColor,
        ),
        const SizedBox(width: 20),
        Text(
          text,
          style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
