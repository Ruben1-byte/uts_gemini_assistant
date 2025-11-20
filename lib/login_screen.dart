import 'package:flutter/material.dart';
import 'register_screen.dart'; // Akan dibuat nanti
import 'home_screen.dart';     // Halaman utama setelah login sukses

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // Fungsi simulasi login
  void _performLogin(BuildContext context) {
    // Di sini Anda bisa menambahkan logika verifikasi form
    
    // Anggap login sukses, navigasi ke HomeScreen
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username atau Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => _performLogin(context),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text('LOGIN', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Pindah ke Halaman Register (belum dibuat)
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const RegisterScreen()),
                );
              },
              child: const Text('Belum punya akun? Daftar di sini.'),
            ),
          ],
        ),
      ),
    );
  }
}