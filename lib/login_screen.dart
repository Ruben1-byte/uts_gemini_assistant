import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // Fungsi simulasi login
  void _performLogin(BuildContext context) {
    // Anggap login sukses, navigasi ke HomeScreen
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Batas lebar maksimal untuk form input
    const double maxInputWidth = 400.0;

    return Scaffold(
      // Hapus AppBar jika Anda menggunakan tema gelap layar penuh (elite design)
      // Jika tetap ingin ada AppBar, biarkan seperti ini
      appBar: AppBar(title: const Text('Gemini AI Assistant')), 
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            // Membatasi lebar Container utama
            constraints: const BoxConstraints(maxWidth: maxInputWidth),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // >>> PENAMBAHAN LAMBANG AI (Paling Sesuai) <<<
                Icon(
                  Icons.psychology_alt, // Menggunakan lambang AI
                  size: 100, // Ukuran lebih besar
                  // Menggunakan warna primer dari tema (misalnya biru atau cyan)
                  color: Theme.of(context).primaryColor, 
                ),
                const SizedBox(height: 10),
                const Text(
                  'Gemini AI Assistant', // Judul utama
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.w300, // Font tipis untuk kesan modern
                  ),
                ),
                const SizedBox(height: 50),

                // Text Field Username/Email
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Username atau Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),

                // Text Field Password
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                
                const SizedBox(height: 40),
                
                // Tombol LOGIN
                ElevatedButton(
                  onPressed: () => _performLogin(context),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text('LOGIN', style: TextStyle(fontSize: 16)),
                ),
                
                const SizedBox(height: 16),
                
                // Tombol Register
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: Text(
                    'Belum punya akun? Daftar di sini.',
                    // Menggunakan warna aksen dari tema
                    style: TextStyle(color: Theme.of(context).primaryColor), 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}