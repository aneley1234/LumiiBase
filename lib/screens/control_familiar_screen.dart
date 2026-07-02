import 'package:flutter/material.dart';
import 'casa_screen.dart';

class ControlFamiliarScreen extends StatefulWidget {
  const ControlFamiliarScreen({super.key});

  @override
  State<ControlFamiliarScreen> createState() => _ControlFamiliarScreenState();
}

class _ControlFamiliarScreenState extends State<ControlFamiliarScreen> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();
  final TextEditingController _codigoController = TextEditingController();

  @override
  void dispose() {
    _nombreController.dispose();
    _edadController.dispose();
    _codigoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC7E9F1),
      appBar: AppBar(
        title: const Text('Control Familiar'),
        backgroundColor: const Color(0xFFC7E9F1),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Control Familiar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2B5D67),
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: 'Nombre del niño',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _edadController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Edad',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _codigoController,
              decoration: InputDecoration(
                labelText: 'Código de clase',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2B5D67),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
             onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const CasaScreen()),
  );
},
              child: const Text('Continuar', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}