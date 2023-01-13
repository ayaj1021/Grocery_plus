import 'package:flutter/material.dart';

import 'package:grocery_plus_app_ui/Screens/Bottom_navigation/bottom_navigation.dart';

import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class ChatWithUs extends StatefulWidget {
  const ChatWithUs({super.key});

  @override
  State<ChatWithUs> createState() => _ChatWithUsState();
}

class _ChatWithUsState extends State<ChatWithUs> {
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
                  vertical: 40,
                ),
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
                                            const BottomNavigation()));
                              });
                            },
                            child: const Icon(Icons.arrow_back)),
                        const SizedBox(width: 20),
                        Text(
                          'Chat with us',
                          style: Styles.headLineStyle1,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [Icon(Icons.more_horiz)],
                    ),
                    const SizedBox(height: 30),
                    //Container
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 86,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.orange),
                            child: const Icon(
                              Icons.shopping_basket_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Order #345',
                                style: Styles.headLineStyle5,
                              ),
                              Text(
                                'Delivered',
                                style: Styles.headLineStyle6.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green),
                              ),
                              Text(
                                'October 14, 2016',
                                style: Styles.headLineStyle6
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Text(
                            '\$30',
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.orange),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 300),

                    const ChatWithUsQuestionContainer(text: 'I want a refund'),
                    const SizedBox(height: 10),
                    const ChatWithUsQuestionContainer(
                        text: 'The Delivery isn\'t good'),
                    const SizedBox(height: 10),
                    const ChatWithUsQuestionContainer(text: 'Delivery is late'),
                    const SizedBox(height: 50),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Write Message',
                        suffix: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(Icons.video_call_outlined),
                            SizedBox(width: 8),
                            Icon(Icons.image_outlined),
                            SizedBox(width: 8),
                            Icon(Icons.send_outlined),
                          ],
                        ),
                      ),
                    )
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

class ChatWithUsQuestionContainer extends StatelessWidget {
  final String text;
  const ChatWithUsQuestionContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //  height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green,
      ),
      child: Text(
        text,
        style: Styles.headLineStyle5.copyWith(color: Colors.white),
      ),
    );
  }
}
