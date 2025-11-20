import 'package:flutter/material.dart';
import 'splash_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Definisikan Dark Theme
  ThemeData _darkTheme() {
    return ThemeData(
      // Warna utama (AppBar, Tombol Aksen, BottomNav terpilih)
      primaryColor: Colors.cyan, // Pilih warna aksen yang kontras (misalnya Cyan)
      colorScheme: ColorScheme.dark(
        primary: Colors.cyan, // Warna aksen
        secondary: Colors.tealAccent, // Warna aksen sekunder
        surface: Colors.black, // Warna permukaan (misalnya Card/Container)
        background: Colors.black, // Warna Latar Belakang Utama (Hitam)
      ),
      scaffoldBackgroundColor: Colors.black, // Background Scaffold
      textTheme: const TextTheme(
        // Atur warna teks default menjadi putih
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white70),
        titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // Styling AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black, 
        foregroundColor: Colors.white, 
        elevation: 0, // Tanpa bayangan untuk kesan modern
      ),
      // Styling Tombol (ElevatedButton)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan, 
          foregroundColor: Colors.black, 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      // Styling Input (TextField)
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFF1A1A1A),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        labelStyle: TextStyle(color: Colors.grey),
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gemini AI Assistant Elite',
      theme: _darkTheme(),
      home: const SplashScreen(),
    );
  }
}