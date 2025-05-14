import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zeyad Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0D1B2A),
        scaffoldBackgroundColor: Color(0xFF0D1B2A),
        textTheme: TextTheme(
          headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.white70),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
