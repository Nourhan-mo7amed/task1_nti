import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> screens = [
    {'title': 'Profile', 'route': '/profile'},
    {'title': 'Subscription Plan', 'route': '/subscription_plan'},
    {'title': 'Privacy', 'route': '/privacy'},
    {'title': 'My Basket', 'route': '/my_basket'},
    {'title': 'Congratulation', 'route': '/congratulation'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, screens[index]['route']!);
              },
              child: Text(screens[index]['title']!),
            ),
          );
        },
      ),
    );
  }
}
