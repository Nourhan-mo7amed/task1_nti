import 'package:flutter/material.dart';

class basket_card extends StatelessWidget {
  final String name;
  final String packs;
  final String price;
  final String image;
  final bool highlight;

  const basket_card({
    super.key,
    required this.name,
    required this.packs,
    required this.price,
    required this.image,
    this.highlight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: highlight ? Colors.orange.shade50 : Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(image, width: 50),
        title: Text(name),
        subtitle: Text(packs),
        trailing: Text(
          price,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
