import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const LumiiApp());
}

class LumiiApp extends StatelessWidget {
  const LumiiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lumii',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
    );
  }
}