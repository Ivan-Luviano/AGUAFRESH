import 'package:go_router/go_router.dart';

import '../../features/home/presentation/login/login_page.dart';
import '../../features/home/presentation/register/register_page.dart';
import '../../features/home/presentation/home_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',

    routes: [

      // LOGIN
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginPage(),
      ),

      // REGISTRO
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),

      // HOME
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),

    ],
  );
}