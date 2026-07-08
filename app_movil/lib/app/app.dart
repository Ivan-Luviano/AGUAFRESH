import 'package:flutter/material.dart';

import 'theme/app_theme.dart';

class AguaFreshApp extends StatelessWidget {
  const AguaFreshApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AGUAFRESH',
      theme: AppTheme.lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text("AGUAFRESH"),
        ),
      ),
    );
  }
}