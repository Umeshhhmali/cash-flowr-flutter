import 'package:cashflowr/pages/home/views/about_page.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                      ),
                    ),
                    const Text(
                      "🧑🏻",
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  "Ash Mali",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          ListTile(
            leading: Icon(Icons.home,color: Colors.grey.shade700,),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context); 
            },
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.grey.shade700,),
            title: const Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info,color: Colors.grey.shade700,),
            title: const Text("About App"),
            onTap: () {
              Navigator.pop(context); // close drawer first
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.grey.shade700,),
            title: const Text("Logout"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
