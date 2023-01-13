import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Authentication/New_registration_password/new_registration_password.dart';
import 'dart:io';
import 'package:grocery_plus_app_ui/Screens/Authentication/OTP_authentication/phone_otp.dart';

import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/bottom_button.dart';
import 'package:image_picker/image_picker.dart';

class YourInformation extends StatefulWidget {
  const YourInformation({super.key});

  @override
  State<YourInformation> createState() => _YourInformationState();
}

class _YourInformationState extends State<YourInformation> {
  File? _image;

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

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
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                                            const PhoneOTP()));
                              });
                            },
                            child: const Icon(Icons.arrow_back)),
                        const SizedBox(width: 20),
                        Text(
                          'Your Information',
                          style: Styles.headLineStyle1,
                        )
                      ],
                    ),
                    const SizedBox(height: 50),
                    Text(
                      'It looks like you don\'t have account in this number. Please let us know some information for a secure service',
                      style: Styles.headLineStyle3,
                    ),
                    const SizedBox(height: 80),
                    _image != null
                        ? Image.file(
                            _image!,
                            width: 250,
                            height: 250,
                            fit: BoxFit.cover,
                          )
                        : const Icon(
                            Icons.add_a_photo_outlined,
                            size: 50,
                          ),

                    //Camera image
                    Container(
                      padding: const EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => getImage(ImageSource.camera),
                            child: const Icon(
                              Icons.linked_camera_outlined,
                              size: 90,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    //Facebook sync
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Stack(
                        children: [
                          Center(
                            child: Text(
                              'Sync From Facebook',
                              style: Styles.headLineStyle5
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const [
                              // Image.asset(
                              //   'Facebook.png',
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person_outline_rounded),
                            hintText: 'Full name'),
                      ),
                    ),
                    const SizedBox(height: 140),
                    //Bottom button
                    GestureDetector(
                        onTap: () {
                          
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NewRegistrationPassword()));
                        
                        },
                        child: const BottomButton(
                          text: 'Next',
                          iconData: Icons.arrow_forward,
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
