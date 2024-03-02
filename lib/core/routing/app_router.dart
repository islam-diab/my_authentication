import 'package:flutter/material.dart';
import 'package:my_authentication/core/routing/routes.dart';
import 'package:my_authentication/feature/home/ui/home_view.dart';
import 'package:my_authentication/feature/login/ui/screen/login_view.dart';

import '../../feature/on_boarding/ui/on_boarding_view.dart';
import '../../feature/signup/ui/signup_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final argument = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupView(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route define in ${settings.name}'),
            ),
          ),
        );
    }
  }
}
