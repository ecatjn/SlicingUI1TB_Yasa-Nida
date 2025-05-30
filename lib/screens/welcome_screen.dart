import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Image.asset('ASSET/logoapk.png', height: 80),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Image.asset('ASSET/logorang.png', height: 160),
                  const SizedBox(height: 24),
                  const Text(
                    "Selamat Datang",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF335D5D),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Disini tempat di mana kamu didengar, dipahami, dan didukung. Mulailah perjalananmu menuju kesejahteraan mental yang lebih baik, langkah demi langkah.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6BBBAE),
                      minimumSize: const Size.fromHeight(48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                    child: const Text("Mulai"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
