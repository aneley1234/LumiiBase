import 'package:flutter/material.dart';
import 'matematicas_screen.dart';
import 'ingles_screen.dart';
import 'coordinacion_screen.dart';
import 'lectoescritura_screen.dart';
import 'maya_screen.dart';

class CasaScreen extends StatelessWidget {
  const CasaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC7E9F1),
      appBar: AppBar(
        title: const Text('Casa Lumii'),
        backgroundColor: const Color(0xFFC7E9F1),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _MenuButton(
              label: 'Matemáticas',
              icon: Icons.calculate_rounded,
              color: const Color(0xFFFFD166),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MatematicasScreen()),
              ),
            ),
            const SizedBox(height: 18),
            _MenuButton(
              label: 'Inglés',
              icon: Icons.language_rounded,
              color: const Color(0xFF4FC3D7),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InglesScreen()),
              ),
            ),
            const SizedBox(height: 18),
            _MenuButton(
              label: 'Coordinación',
              icon: Icons.accessibility_new_rounded,
              color: const Color(0xFFC4DA7C),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CoordinacionScreen()),
              ),
            ),
            const SizedBox(height: 18),
            _MenuButton(
              label: 'Lectoescritura',
              icon: Icons.menu_book_rounded,
              color: const Color(0xFFF7B7A3),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LectoescrituraScreen()),
              ),
            ),
            const SizedBox(height: 18),
            _MenuButton(
              label: 'Idioma Maya',
              icon: Icons.travel_explore_rounded,
              color: const Color(0xFFFFD166),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MayaScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _MenuButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 68,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: const Color(0xFF2B5D67),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onTap,
        icon: Icon(icon, size: 28),
        label: Text(
          label,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}