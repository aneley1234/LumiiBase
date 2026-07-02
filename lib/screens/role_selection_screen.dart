import 'package:flutter/material.dart';
import 'home_form_screen.dart';
import 'school_form_screen.dart';
import 'teacher_screen.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('¿Cómo vas a aprender?')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _RoleButton(
              label: 'Aprendo desde casa',
              color: const Color(0xFFFFD166),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeFormScreen()),
              ),
            ),
            const SizedBox(height: 18),
            _RoleButton(
              label: 'Aprendo desde la escuela',
              color: const Color(0xFF4FC3D7),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SchoolFormScreen()),
              ),
            ),
            const SizedBox(height: 18),
            _RoleButton(
              label: 'Soy docente',
              color: const Color(0xFFC4DA7C),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TeacherScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RoleButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _RoleButton({
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 68,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: const Color(0xFF2B5D67),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onTap,
        child: Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}