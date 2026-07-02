import 'package:flutter/material.dart';

class MatematicasScreen extends StatelessWidget {
  const MatematicasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Matemáticas')),
      body: const Center(
        child: Text('Matemáticas', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}