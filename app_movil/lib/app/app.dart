import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'theme/app_theme.dart';

class AguaFreshApp extends StatelessWidget {
  const AguaFreshApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'AGUAFRESH',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}