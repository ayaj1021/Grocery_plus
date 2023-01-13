import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Authentication/Sign_in/password_screen_login.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/bottom_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberLogin extends StatefulWidget {
  const PhoneNumberLogin({super.key});

  @override
  State<PhoneNumberLogin> createState() => _PhoneNumberLoginState();
}

class _PhoneNumberLoginState extends State<PhoneNumberLogin> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            // const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset(
                      'images/SplashphoneNoImage.png',
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter your mobile number',
                          style: Styles.headLineStyle2,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'We need to verify you. We will send you a one\ntime verification code',
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IntlPhoneField(
                      dropdownIcon: const Icon(Icons.phone),
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'NG',
                      onChanged: ((phone) {
                        debugPrint(phone.completeNumber);
                      }),
                    ),
                  ),
                  //inputting phone number aspect
                  // Container(
                  //     height: 50,
                  //     width: MediaQuery.of(context).size.width,
                  //     padding: const EdgeInsets.symmetric(horizontal: 5),
                  //     decoration: BoxDecoration(
                  //         color: Colors.grey.shade300,
                  //         borderRadius: BorderRadius.circular(8)),
                  //     child: TextFormField(
                  //       keyboardType: TextInputType.number,
                  //       textInputAction: TextInputAction.done,
                  //       maxLines: 1,
                  //       decoration: InputDecoration(
                  //           labelText: 'Phone Number',
                  //           border: InputBorder.none,
                  //           prefixIcon: Container(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 6, vertical: 6),
                  //             margin: const EdgeInsets.symmetric(horizontal: 8),
                  //             child: Row(
                  //               mainAxisSize: MainAxisSize.min,
                  //               children: [
                  //                 InkWell(
                  //                   onTap: () async {
                  //                     final code = await countryPicker.showPicker(
                  //                         context: context);
                  //                     setState(() {
                  //                       countryCode = code;
                  //                     });
                  //                   },
                  //                   child: Row(
                  //                     children: [
                  //                       const Icon(Icons.call),
                  //                       const SizedBox(width: 10),
                  //                       Container(
                  //                         padding: const EdgeInsets.symmetric(
                  //                             horizontal: 8, vertical: 6),
                  //                         child: countryCode != null
                  //                             ? countryCode!.flagImage
                  //                             : null,
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //           labelStyle: TextStyle(color: Colors.grey.shade600)),
                  //     )
                  //     // Row(
                  //   children: [
                  //     //const Icon(Icons.call),
                  //     TextFormField(
                  //       keyboardType: TextInputType.number,
                  //       textInputAction: TextInputAction.done,
                  //       maxLines: 1,
                  //     )
                  //   ],
                  // ),
                  // ),
                  //Bottom button part
                  const SizedBox(height: 200),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PasswordLoginScreen()));
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
      ),
    );
  }
}
