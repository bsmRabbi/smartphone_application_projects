import 'package:flutter/material.dart';
import 'package:flutter_project_3/converter_page.dart';
import 'package:flutter_project_3/pages.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Homepage",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      drawer: NavigationDrawer(
        backgroundColor: const Color.fromARGB(255, 98, 104, 119),
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Rabbi"),
              accountEmail: Text("bsmrabbi@example.com"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 126, 142, 172),
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.contact_emergency),
            title: Text("Contact"),
          ),
        ],
      ),

      body: Column(
        children: [
          Text(
            "Hello, Welcome",
            style: GoogleFonts.coustard(
              textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30),
          Text("Click to view your profile", style: TextStyle(fontSize: 15)),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              foregroundColor: Colors.black,
              fixedSize: Size(200, 40),
              shape: ContinuousRectangleBorder(),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person),
                SizedBox(width: 20),
                Text("Profile Section"),
              ],
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Click to enter your information",
            style: TextStyle(fontSize: 15),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConverterPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyanAccent,
              foregroundColor: Colors.black,
              fixedSize: Size(200, 40),
              shape: ContinuousRectangleBorder(),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.text_fields),
                SizedBox(width: 20),
                Text("Text Form Section"),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 500),
              Icon(Icons.phone_android, size: 30, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text(
                "Flutter Assignment 7",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
