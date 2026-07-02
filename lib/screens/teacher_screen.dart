import 'dart:math';
import 'package:flutter/material.dart';

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({super.key});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  final List<String> _grupos = [];

  void _crearGrupo() {
    final codigo = _generarCodigo();
    setState(() {
      _grupos.add(codigo);
    });
  }

  String _generarCodigo() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final rand = Random();
    return List.generate(6, (index) => chars[rand.nextInt(chars.length)]).join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4DA7C),
      appBar: AppBar(
        title: const Text('Soy docente'),
        backgroundColor: const Color(0xFFC4DA7C),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2B5D67),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: _crearGrupo,
              child: const Text('Crear grupo', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 24),
            const Text(
              'Grupos creados:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: _grupos.isEmpty
                  ? const Center(child: Text('Aún no has creado grupos'))
                  : ListView.builder(
                      itemCount: _grupos.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: const Icon(Icons.groups_rounded),
                            title: Text('Grupo ${index + 1}'),
                            subtitle: Text('Código: ${_grupos[index]}'),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}