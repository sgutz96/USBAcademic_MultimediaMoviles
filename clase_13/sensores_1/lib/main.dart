import 'package:flutter/material.dart';
import './widgets/biometric_service.dart';
import './widgets/biometric_status_card.dart';
import './widgets/biometric_button.dart';

void main() {
  runApp(const BiometricApp());
}

class BiometricApp extends StatelessWidget {
  const BiometricApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Biometría',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BiometricService _biometricService = BiometricService();
  bool _isAuthenticated = false;

  Future<void> _handleAuth() async {
    final bool hasSupport = await _biometricService.hasBiometricSupport();

    if (!hasSupport && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('El dispositivo no soporta biometría o no está configurada.'),
        ),
      );
      return;
    }

    final bool success = await _biometricService.authenticate();
    setState(() {
      _isAuthenticated = success;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autenticación de Hardware'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BiometricStatusCard(isAuthenticated: _isAuthenticated),
            const SizedBox(height: 32),
            BiometricButton(onPressed: _handleAuth),
          ],
        ),
      ),
    );
  }
}