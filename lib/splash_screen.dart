import 'package:flutter/material.dart';
import 'login_screen.dart'; // Akan mengarahkan ke halaman Login

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Pindah ke LoginScreen setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ganti dengan logo Anda atau Icon
            Icon(Icons.psychology, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text(
              'Gemini AI Assistant',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            CircularProgressIndicator(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}