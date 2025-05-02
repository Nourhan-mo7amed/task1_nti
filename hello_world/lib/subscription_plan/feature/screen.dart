import 'package:flutter/material.dart';
import 'package:hello_world/subscription_plan/widgets/subscription_option.dart';

class SubscriptionPlanScreen extends StatefulWidget {
  const SubscriptionPlanScreen({super.key});

  @override
  State<SubscriptionPlanScreen> createState() => _SubscriptionPlanScreenState();
}

class _SubscriptionPlanScreenState extends State<SubscriptionPlanScreen> {
  String selectedPlan = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 100, 18, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your \nsubscription plan',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'And get a 7-day free trial',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            subscription_option(
              title: 'Yearly',
              price: '€ 94.80',
              discount: '-86% discount',
              selected: selectedPlan == 'Yearly',
              onTap: () {
                setState(() {
                  selectedPlan = 'Yearly';
                });
              },
            ),
            subscription_option(
              title: 'Monthly',
              price: '€ 10.90',
              discount: '-53% discount',
              selected: selectedPlan == 'Monthly',
              onTap: () {
                setState(() {
                  selectedPlan = 'Monthly';
                });
              },
            ),
            subscription_option(
              title: 'Weekly',
              price: '€ 3.90',
              discount: '',
              selected: selectedPlan == 'Weekly',
              onTap: () {
                setState(() {
                  selectedPlan = 'Weekly';
                });
              },
            ),

            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 241, 244),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "You'll get:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Icon(Icons.star, color: Colors.blue),
                    title: Text('Unlimited access'),
                  ),
                  ListTile(
                    leading: Icon(Icons.star, color: Colors.blue),
                    title: Text('200GB storage'),
                  ),
                  ListTile(
                    leading: Icon(Icons.star, color: Colors.blue),
                    title: Text('Sync all your devices'),
                  ),
                ],
              ),
            ),

            const Spacer(),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF007AFF),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(
                child: Text(
                  'Subscribe',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
