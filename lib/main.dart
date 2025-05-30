import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const CounselingApp());
}

class CounselingApp extends StatelessWidget {
  const CounselingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counseling App',
      home: const SplashScreen(),
    );
  }
}
