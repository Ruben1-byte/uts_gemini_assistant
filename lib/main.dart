import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Import yang benar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gemini AI Assistant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(), // Memanggil SplashScreen
    );
  }
}