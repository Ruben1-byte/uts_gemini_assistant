import 'package:flutter/material.dart';
import 'chatbot_screen.dart';
import 'settings_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Index untuk mengontrol tab yang sedang aktif
  int _selectedIndex = 0;

  // List widget yang akan ditampilkan di setiap tab
  final List<Widget> _screens = [
    const ChatbotScreen(),
    const SettingsScreen(),
    const AboutScreen(),
  ];

  // Fungsi yang dipanggil saat pengguna menekan item di BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gemini Assistant'),
      ),
      body: _screens[_selectedIndex], // Menampilkan screen yang terpilih
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.psychology),
            label: 'Asisten Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings/History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex, // Index tab yang aktif
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped, // Panggil fungsi saat tab ditekan
      ),
    );
  }
}