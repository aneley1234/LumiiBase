import 'package:flutter/material.dart';

class MayaScreen extends StatelessWidget {
  const MayaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4DA7C),
      appBar: AppBar(
        title: const Text('Idioma Maya'),
        backgroundColor: const Color(0xFFC4DA7C),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Idioma Maya',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3F4A1F),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Aprende palabras básicas en maya',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF3F4A1F),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3F4A1F),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text('Iniciar aprendizaje', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}