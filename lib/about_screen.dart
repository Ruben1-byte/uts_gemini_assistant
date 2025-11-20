import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const String _yourName = "Challik Ruben";
  static const String _yourNIM = "23552011333";
  

  @override
  Widget build(BuildContext context) {
    final String copyrightInfo = 'Copyright by $_yourName (NIM: $_yourNIM)';
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.psychology_alt,
                size: 80,
                color: Colors.blue,
              ),
              const SizedBox(height: 16),
              const Text(
                'Gemini AI Assistant',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Versi 1.0.0 (UTS Project)',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              
             
              const Text(
                'Aplikasi asisten cerdas ini dibuat untuk tugas UTS dan didukung penuh oleh Google Gemini API.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 40),
              const Divider(),
              const SizedBox(height: 20),
              
            
              Text(
                copyrightInfo, 
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}