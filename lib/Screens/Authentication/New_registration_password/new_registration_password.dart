import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Authentication/New_registration_password/your_information.dart';

import 'package:grocery_plus_app_ui/Screens/Bottom_navigation/bottom_navigation.dart';

import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/bottom_button.dart';
import 'package:grocery_plus_app_ui/Widgets/password_textfield.dart';

class NewRegistrationPassword extends StatefulWidget {
  const NewRegistrationPassword({super.key});

  @override
  State<NewRegistrationPassword> createState() =>
      _NewRegistrationPasswordState();
}

class _NewRegistrationPasswordState extends State<NewRegistrationPassword> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //back direction
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const YourInformation()));
                                 
                                },
                                child: const Icon(Icons.arrow_back)),
                            const SizedBox(width: 20),
                            Text(
                              'Choose a Password',
                              style: Styles.headLineStyle1,
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'For security & safety, please choose a password',
                          style: Styles.headLineStyle3,
                        ),
                        const SizedBox(height: 30),
                        //Image
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset(
                            'images/Newregistration.png',
                            height: 350,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(8)),
                          child: PasswordTextfield(
                            controller: passwordController,
                            text: 'Password',
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(8)),
                          child: PasswordTextfield(
                            controller: passwordController,
                            text: 'Confirm Password',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Bottom button part
              const SizedBox(height: 60),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavigation()));
                  });
                },
                //Bottom button
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: BottomButton(
                    text: 'Finish, Good to go',
                    iconData: Icons.arrow_forward,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
