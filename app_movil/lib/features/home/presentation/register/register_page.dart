import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/providers/auth_provider.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/app_background.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/app_text_field.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final nombreController = TextEditingController();
  final apellidoPController = TextEditingController();
  final apellidoMController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;
  bool isLoading = false;

  @override
  void dispose() {
    nombreController.dispose();
    apellidoPController.dispose();
    apellidoMController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> register() async {
    if (nombreController.text.trim().isEmpty ||
        apellidoPController.text.trim().isEmpty ||
        apellidoMController.text.trim().isEmpty ||
        emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty ||
        confirmPasswordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Completa todos los campos."),
        ),
      );
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Las contraseñas no coinciden."),
        ),
      );
      return;
    }

    if (passwordController.text.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("La contraseña debe tener mínimo 6 caracteres."),
        ),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await ref.read(authProvider).register(
            nombre: nombreController.text.trim(),
            apellidoPaterno: apellidoPController.text.trim(),
            apellidoMaterno: apellidoMController.text.trim(),
            email: emailController.text.trim(),
            password: passwordController.text,
          );

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Usuario registrado correctamente."),
        ),
      );

      context.pop();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }

    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [

            const SizedBox(height: 20),

            Image.asset(
              AppAssets.logoCarrera,
              width: 80,
            ),

            const SizedBox(height: 15),

            const AppLogo(size: 140),

            const SizedBox(height: 20),

            const Text(
              "Crear cuenta",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            AppTextField(
              controller: nombreController,
              hint: "Nombre",
              icon: Icons.person_outline,
            ),

            const SizedBox(height: 15),

            AppTextField(
              controller: apellidoPController,
              hint: "Apellido paterno",
              icon: Icons.person_outline,
            ),

            const SizedBox(height: 15),

            AppTextField(
              controller: apellidoMController,
              hint: "Apellido materno",
              icon: Icons.person_outline,
            ),

            const SizedBox(height: 15),

            AppTextField(
              controller: emailController,
              hint: "Correo electrónico",
              icon: Icons.email_outlined,
            ),

            const SizedBox(height: 15),

            AppTextField(
              controller: passwordController,
              hint: "Contraseña",
              icon: Icons.lock_outline,
              obscure: obscurePassword,
            ),

            const SizedBox(height: 15),

            AppTextField(
              controller: confirmPasswordController,
              hint: "Confirmar contraseña",
              icon: Icons.lock_outline,
              obscure: obscureConfirmPassword,
            ),

            const SizedBox(height: 30),

            AppButton(
              text: "Crear cuenta",
              loading: isLoading,
              onPressed: register,
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text("Ya tengo cuenta"),
            ),
          ],
        ),
      ),
    );
  }
}