import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Providers/counter_provider.dart';
import 'package:grocery_plus_app_ui/Providers/password_provider.dart';
import 'package:grocery_plus_app_ui/Screens/Splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PasswordProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const SplashScreen(),
      ),
    );
  }
}

