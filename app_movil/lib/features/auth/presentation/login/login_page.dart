import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/app_background.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/app_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscurePassword = true;

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
                onPressed: () {},
                child: const Text(
                  "¿Olvidaste tu contraseña?",
                ),
              ),
            ),

            const SizedBox(height: 10),

            AppButton(
              text: "Iniciar sesión",
              onPressed: () {},
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text(
                  "¿No tienes cuenta?",
                ),

                TextButton(
                  onPressed: () {},
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