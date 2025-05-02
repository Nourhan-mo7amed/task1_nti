import 'package:flutter/material.dart';
import 'package:hello_world/privacy/widgets/setting_item.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool readReceiptsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Privacy', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff008069),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Text(
              'Who can see my personal info',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff008069),
              ),
            ),
          ),
          settingItem('Last seen and online', 'Everyone'),
          settingItem('Profile photo', 'Everyone'),
          settingItem('About', 'Everyone'),

          ListTile(
            title: Text('Read receipts', style: const TextStyle(fontSize: 16)),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                "If turned off, you won’t send or receive Read receipts. Read receipts are always sent for group chats.",

                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
          ),

          Divider(height: 32),
          settingItem('Default message timer', 'Off'),
          settingItem('Groups', 'Everyone'),
          settingItem('Blocked contacts', '0 contacts'),
        ],
      ),
    );
  }
}
