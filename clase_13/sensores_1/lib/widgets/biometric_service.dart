import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class BiometricService {
  final LocalAuthentication _auth = LocalAuthentication();

  /// Comprueba si el hardware dispone de soporte biométrico
  Future<bool> hasBiometricSupport() async {
    try {
      final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
      final bool isDeviceSupported = await _auth.isDeviceSupported();
      return canAuthenticateWithBiometrics && isDeviceSupported;
    } on PlatformException {
      return false;
    }
  }

  /// Ejecuta el flujo nativo de autenticación (Huella / Face ID / PIN)
  Future<bool> authenticate() async {
    try {
      return await _auth.authenticate(
        localizedReason: 'Escanea tu huella para acceder',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: false,
        ),
      );
    } on PlatformException catch (e) {
      print('Error en autenticación: $e');
      return false;
    }
  }
}