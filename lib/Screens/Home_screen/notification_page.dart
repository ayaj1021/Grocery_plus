import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Home_screen/home_screen.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/notification_container.dart';

class NotificationBellPage extends StatefulWidget {
  const NotificationBellPage({super.key});

  @override
  State<NotificationBellPage> createState() => _NotificationBellPageState();
}

class _NotificationBellPageState extends State<NotificationBellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
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
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            });
                          },
                          child: const Icon(Icons.arrow_back)),
                      const SizedBox(width: 20),
                      Text(
                        'Notification',
                        style: Styles.headLineStyle1,
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  const NotificationsContainer(
                    orderText: 'Order #345',
                    timeText: '3:57PM',
                    detailsText:
                        'Your Order is Confirmed. Please\n check everything is okay',
                    iconData: Icons.subject,
                    isColor: Colors.orange,
                  ),
                  const SizedBox(height: 20),
                  NotificationsContainer(
                    orderText: 'Order #345',
                    timeText: '2:33PM',
                    detailsText: 'Your Order is Delivering to your\nhome',
                    iconData: Icons.call,
                    isColor: Colors.greenAccent,
                    isColorContainer: Colors.grey.shade50,
                  ),
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
