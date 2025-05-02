import 'package:flutter/material.dart';
import 'package:hello_world/profile/widgets/info_tile.dart';

class profile_screen extends StatelessWidget {
  const profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text("Info", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        actions: [
          TextButton(
            child: Text(
              "Done",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),

          InfoTile(
            title: "main",
            subtitle: "+1 202 555 0181",
            subtitleColor: Colors.green,
          ),
          Divider(),

          InfoTile(
            title: "home",
            subtitle: "+1 202 555 0113",
            subtitleColor: Colors.blue,
          ),
          Divider(),

          InfoTile(
            title: "bio",
            subtitle: "Design adds value faster, than it adds cost",
          ),
          Divider(),

          ListTile(
            title: Text("Notifications"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Enabled", style: TextStyle(fontSize: 16)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          Divider(),

          ListTile(
            title: Text("Delete Contact", style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
