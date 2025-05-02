import 'package:flutter/material.dart';
import 'package:hello_world/congratulation/feature/congratulation.dart';
import 'package:hello_world/home/feature/home.dart';
import 'package:hello_world/my_basket/feature/basket.dart';
import 'package:hello_world/privacy/feature/privacy.dart';
import 'package:hello_world/profile/feature/profile.dart';
import 'package:hello_world/subscription_plan/feature/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi Screens App',
      home: HomeScreen(),
      routes: {
           '/profile': (context) => profile_screen(),
        '/subscription_plan': (context) => SubscriptionPlanScreen(),
           '/privacy': (context) => PrivacyScreen(),
        '/my_basket': (context) => MyBasketScreen(),
        '/congratulation': (context) => congratulation_screen(),
      },
    );
  }
}
