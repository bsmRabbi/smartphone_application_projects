import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color.fromARGB(255, 219, 219, 246),
        primaryColor: Color(0xFF00C6FF),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 239, 42, 128),
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: Color.fromARGB(255, 219, 219, 246),
        ),
        iconTheme: IconThemeData(color: Color(0xFF00C6FF)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 239, 42, 128),
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}
