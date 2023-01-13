import 'package:flutter/material.dart';

import 'package:grocery_plus_app_ui/Screens/Authentication/New_registration_password/your_information.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/bottom_button.dart';
import 'package:grocery_plus_app_ui/Widgets/otp_container_widget.dart';

class PhoneOTP extends StatefulWidget {
  const PhoneOTP({super.key});

  @override
  State<PhoneOTP> createState() => _PhoneOTPState();
}

class _PhoneOTPState extends State<PhoneOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/SplashphoneNoImage.png'),
                const SizedBox(height: 60),
                Text(
                  'Enter Verification Code',
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(height: 10),
                Text(
                  'We sent a text to',
                  style: Styles.headLineStyle3,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    OTPContainer(),
                    SizedBox(width: 20),
                    OTPContainer(),
                    SizedBox(width: 20),
                    OTPContainer(),
                    SizedBox(width: 20),
                    OTPContainer(),
                  ],
                ),
                const SizedBox(height: 60),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          child: Text('Resend OTP',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.orangeAccent))),
                      InkWell(
                          child: Text('Change Phone Number',
                              style: Styles.headLineStyle3))
                    ],
                  ),
                ),

                //Bottom button part
                const SizedBox(height: 90),
                InkWell(
                  onTap: () {
                    
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const YourInformation()));
                   
                  },
                  child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: BottomButton(
                        text: 'Next',
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
