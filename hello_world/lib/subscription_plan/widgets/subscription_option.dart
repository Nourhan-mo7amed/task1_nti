
import 'package:flutter/material.dart';

class subscription_option extends StatelessWidget {
  final String title;
  final String price;
  final String discount;
  final bool selected;
  final VoidCallback onTap;

  const subscription_option({
    super.key,
    required this.title,
    required this.price,
    required this.discount,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: selected ? Colors.blue[50] : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Radio<String>(
            value: title,
            groupValue: selected ? title : '',
            onChanged: (_) => onTap(),
          ),
          title: Text(title),
          subtitle:
              discount.isNotEmpty
                  ? Text(discount, style: TextStyle(color: Colors.green))
                  : null,
          trailing: Column(
            children: [
              Text(
                price,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'every month',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
