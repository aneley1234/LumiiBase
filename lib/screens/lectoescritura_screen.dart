import 'package:flutter/material.dart';

class LectoescrituraScreen extends StatelessWidget {
  const LectoescrituraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9E7A3),
      appBar: AppBar(
        title: const Text('Lectoescritura'),
        backgroundColor: const Color(0xFFF9E7A3),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Lectoescritura',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5A4634),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Aquí practicarás lectura y escritura',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF5A4634),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5A4634),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text('Actividad 1', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}