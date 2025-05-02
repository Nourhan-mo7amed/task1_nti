import 'package:flutter/material.dart';
import 'package:hello_world/my_basket/widgets/bascket_card.dart';

class MyBasketScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'name': 'Quinoa fruit salad',
      'packs': '2packs',
      'price': '₦ 20,000',
      'image': 'assets/images/food.avif',
    },
    {
      'name': 'Melon fruit salad',
      'packs': '2packs',
      'price': '₦ 20,000',
      'image': 'assets/images/food.avif',
    },
    {
      'name': 'Tropical fruit salad',
      'packs': '2packs',
      'price': '₦ 20,000',
      'image': 'assets/images/food.avif',
    },
  ];

  MyBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  const Text(
                    'My Basket',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return basket_card(
                    name: item['name']!,
                    packs: item['packs']!,
                    price: item['price']!,
                    image: item['image']!,
                    highlight: index == 2,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₦ 60,000',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 50),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Checkout',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
