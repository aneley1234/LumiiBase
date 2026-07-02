import 'package:flutter/material.dart';

class InglesScreen extends StatelessWidget {
  const InglesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inglés')),
      body: const Center(
        child: Text('Inglés', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}