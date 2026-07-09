import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/providers/auth_provider.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/app_background.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/app_text_field.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscurePassword = true;
  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

Future<void> login() async {
  // Validar campos
  if (emailController.text.trim().isEmpty ||
      passwordController.text.trim().isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Completa todos los campos"),
      ),
    );
    return;
  }

  setState(() {
    isLoading = true;
  });

  try {
    await ref.read(authProvider).login(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

    if (!mounted) return;

    context.go('/home');
  } on Exception catch (e) {
    if (!mounted) return;

    String message = "Ocurrió un error.";

    final error = e.toString();

    if (error.contains('user-not-found')) {
      message = "No existe una cuenta con ese correo.";
    } else if (error.contains('wrong-password')) {
      message = "La contraseña es incorrecta.";
    } else if (error.contains('invalid-email')) {
      message = "El correo no es válido.";
    } else if (error.contains('invalid-credential')) {
      message = "Correo o contraseña incorrectos.";
    } else if (error.contains('too-many-requests')) {
      message = "Demasiados intentos. Intenta más tarde.";
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  } finally {
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }
}


  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),

            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                AppAssets.waterDrop,
                width: 45,
              ),
            ),

            Image.asset(
              AppAssets.logoCarrera,
              width: 80,
            ),

            const SizedBox(height: 20),

            const AppLogo(
              size: 170,
            ),

            const SizedBox(height: 15),

            const Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Inicia sesión para continuar",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 35),

            AppTextField(
              controller: emailController,
              hint: "Correo electrónico",
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 18),

            AppTextField(
              controller: passwordController,
              hint: "Contraseña",
              icon: Icons.lock_outline,
              obscure: obscurePassword,
              suffixIcon: IconButton(
                icon: Icon(
                  obscurePassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    obscurePassword = !obscurePassword;
                  });
                },
              ),
            ),

            const SizedBox(height: 12),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Recuperar contraseña
                },
                child: const Text(
                  "¿Olvidaste tu contraseña?",
                ),
              ),
            ),

            const SizedBox(height: 10),

            AppButton(
  text: "Iniciar sesión",
  loading: isLoading,
  onPressed: login,
),
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "¿No tienes cuenta?",
                ),
                TextButton(
  onPressed: () {
    context.push('/register');
  },
  child: const Text(
    "Regístrate",
  ),
),
              ],
            ),

            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}