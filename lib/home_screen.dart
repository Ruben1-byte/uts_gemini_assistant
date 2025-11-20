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
        // Jika Anda menggunakan dark theme elite, elevation bisa dihilangkan
        // elevation: 0, 
      ),
      body: _screens[_selectedIndex], // Menampilkan screen yang terpilih
      
      bottomNavigationBar: BottomNavigationBar(
        // Tambahkan tipe fixed agar label tetap terlihat (opsional, tergantung tema)
        type: BottomNavigationBarType.fixed, 
        items: <BottomNavigationBarItem>[
          // 🤖 Ikon Asisten Chat
          BottomNavigationBarItem(
            icon: const Icon(Icons.chat_bubble_outline), 
            activeIcon: const Icon(Icons.chat_bubble),
            label: 'Asisten Chat',
          ),
          // ⚙️ Ikon Settings/History
          BottomNavigationBarItem(
            icon: const Icon(Icons.history_toggle_off), 
            activeIcon: const Icon(Icons.history),
            label: 'Riwayat & Settings',
          ),
          // ℹ️ Ikon About
          BottomNavigationBarItem(
            icon: const Icon(Icons.info_outline),
            activeIcon: const Icon(Icons.info),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex, // Index tab yang aktif
        selectedItemColor: selectedColor, // Menggunakan warna aksen tema
        unselectedItemColor: Colors.grey, // Warna ikon yang tidak terpilih
        backgroundColor: Theme.of(context).colorScheme.surface, // Warna background (penting untuk dark theme)
        onTap: _onItemTapped, // Panggil fungsi saat tab ditekan
      ),
    );
  }
}