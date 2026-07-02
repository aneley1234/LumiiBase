import 'package:flutter/material.dart';

class CoordinacionScreen extends StatelessWidget {
  const CoordinacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coordinación')),
      body: const Center(
        child: Text('Coordinación', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}