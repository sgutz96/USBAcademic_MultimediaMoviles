import 'package:flutter/material.dart';

class BiometricStatusCard extends StatelessWidget {
  final bool isAuthenticated;

  const BiometricStatusCard({
    super.key,
    required this.isAuthenticated,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: isAuthenticated ? Colors.green.shade50 : Colors.red.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isAuthenticated ? Colors.green : Colors.red,
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Icon(
            isAuthenticated ? Icons.lock_open_rounded : Icons.lock_outline_rounded,
            size: 48,
            color: isAuthenticated ? Colors.green.shade700 : Colors.red.shade700,
          ),
          const SizedBox(height: 12),
          Text(
            isAuthenticated ? 'Acceso Autorizado' : 'Sistema Bloqueado',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isAuthenticated ? Colors.green.shade900 : Colors.red.shade900,
            ),
          ),
        ],
      ),
    );
  }
}