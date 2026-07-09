import 'package:flutter/material.dart';

import '../constants/app_assets.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// Fondo blanco
          Container(
            color: Colors.white,
          ),

          /// Agua inferior
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppAssets.waterBottom,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: child,
          ),
        ],
      ),
    );
  }
}