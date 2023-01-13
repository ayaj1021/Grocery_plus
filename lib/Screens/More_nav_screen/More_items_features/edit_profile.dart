import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Bottom_navigation/bottom_navigation.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:grocery_plus_app_ui/Widgets/bottom_button.dart';
import 'package:grocery_plus_app_ui/Widgets/password_textfield.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  TextEditingController passwordController = TextEditingController();

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
                  vertical: 20,
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
                          'Edit Profile',
                          style: Styles.headLineStyle1,
                        )
                      ],
                    ),
                    const SizedBox(height: 90),
                    //Camera section
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 100),
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.orange),
                            child: GestureDetector(
                              onTap: getImage,
                              child: const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 70),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade100),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_rounded),
                            border: InputBorder.none,
                            // hintText: 'Full Name',
                            labelText: 'Full Name'),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade100),
                      child: PasswordTextfield(
                          controller: passwordController, text: 'Password'),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade100),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.call_outlined),
                            border: InputBorder.none,
                            // hintText: 'Full Name',
                            labelText: 'Phone Number'),
                      ),
                    ),
                    //Bottom button part
                    const SizedBox(height: 180),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditProfile()));
                        });
                      },
                      //Bottom button
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: BottomButton(
                          text: 'Save',
                          iconData: Icons.save,
                        ),
                      ),
                    ),
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
