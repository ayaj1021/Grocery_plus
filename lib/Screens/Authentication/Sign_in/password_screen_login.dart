import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Authentication/OTP_authentication/phone_otp.dart';

import 'package:grocery_plus_app_ui/Screens/Authentication/Sign_in/phone_no_login_screen.dart';
import 'package:grocery_plus_app_ui/Widgets/bottom_button.dart';
import 'package:grocery_plus_app_ui/Widgets/password_textfield.dart';

import '../../../Styles/app_styles.dart';

class PasswordLoginScreen extends StatefulWidget {
  const PasswordLoginScreen({super.key});

  @override
  State<PasswordLoginScreen> createState() => _PasswordLoginScreenState();
}

class _PasswordLoginScreenState extends State<PasswordLoginScreen> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PhoneNumberLogin()));
                      });
                    },
                    child: const Icon(Icons.arrow_back)),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    'images/Splashpassword.png',
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter the password',
                        style: Styles.headLineStyle2,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'It looks like you already have an account in this\nnumber. Please enter the password to proceed',
                        style: Styles.headLineStyle3,
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8)),
                        child: PasswordTextfield(
                            controller: passwordController, text: 'Password'),
                      ),
                      const SizedBox(height: 30),
                      InkWell(
                        child: Text(
                          'Forgot Password?',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.orangeAccent),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 120),
                //Bottom button part

                InkWell(
                  onTap: () {
                    
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PhoneOTP()));
                    
                  },
                  //Bottom button
                  child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: BottomButton(
                        text: 'Submit',
                        iconData: Icons.arrow_forward,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


  // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //    const Icon(Icons.lock),
    //      TextFormField(
    //        obscureText: true,
    //        maxLines: 1,
    //        textInputAction: TextInputAction.done,
    //        decoration: InputDecoration(
    //          labelText: 'Password',
    //           prefixIcon: Container(
    //             child: Row(
    //              mainAxisSize: MainAxisSize.min,
    //               children: const [
    //                 //Icon(Icons.lock),
    //               ],
    //             ),
    //           ),
    //        ),
    //      ),
    //      const Icon(Icons.remove_red_eye_outlined),
    //   ],
    // ),