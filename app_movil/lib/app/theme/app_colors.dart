import 'package:flutter/material.dart';

class AppColors {
  // Colores principales
  static const Color primaryBlue = Color(0xFF1E88E5);
  static const Color primaryGreen = Color(0xFF43A047);

  // Fondo
  static const Color background = Color(0xFFF7FAFC);

  // Texto
  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);

  // Bordes
  static const Color inputBorder = Color(0xFFE5E7EB);

  // Colores de apoyo
  static const Color white = Colors.white;
  static const Color error = Color(0xFFE53935);

  // Degradado principal
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      primaryBlue,
      primaryGreen,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}