import 'package:flutter/material.dart';
import 'control_familiar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido a Lumii',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
             onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ControlFamiliarScreen()),
  );
},
              child: const Text('Empezar', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}