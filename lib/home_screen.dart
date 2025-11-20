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
    // Tentukan warna aksen tema untuk BottomNavigationBar
    final Color selectedColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gemini Assistant'),
        // Jika menggunakan dark theme, elevation seringkali dihilangkan
        elevation: 0, 
      ),
      body: _screens[_selectedIndex], // Menampilkan screen yang terpilih
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          // 🤖 Asisten Chat
          BottomNavigationBarItem(
            icon: const Icon(Icons.chat_bubble_outline), 
            activeIcon: const Icon(Icons.chat_bubble),
            label: 'Asisten Chat',
          ),
          // ⚙️ Riwayat & Settings
          BottomNavigationBarItem(
            icon: const Icon(Icons.history_toggle_off), 
            activeIcon: const Icon(Icons.history),
            label: 'Riwayat & Settings',
          ),
          // ℹ️ About
          BottomNavigationBarItem(
            icon: const Icon(Icons.info_outline),
            activeIcon: const Icon(Icons.info),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex, // Index tab yang aktif
        selectedItemColor: selectedColor, // Warna ikon yang aktif (Aksen: Cyan/Biru)
        
        // >>> PERBAIKAN VISIBILITAS ICON <<<
        unselectedItemColor: Colors.white70, // Paksa ikon yang tidak aktif menjadi putih buram
        
        // Pastikan latar belakang BottomBar adalah gelap (seharusnya sudah diatur di main.dart)
        backgroundColor: Theme.of(context).colorScheme.surface, 
        
        onTap: _onItemTapped, // Panggil fungsi saat tab ditekan
      ),
    );
  }
}