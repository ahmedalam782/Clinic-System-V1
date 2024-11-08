import 'package:clinic_system_patient/core/routes/routes.dart';
import 'package:clinic_system_patient/features/home/view/screens/home_screen.dart';
import 'package:clinic_system_patient/features/settings/view/screens/personal_data_change.dart';
import 'package:clinic_system_patient/features/settings/view/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import '../../features/auth/view/screen/login_screen.dart';
import '../../features/auth/view/screen/register_screen.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.personalDataChange:
        return MaterialPageRoute(builder: (_) => const PersonalDataChange());
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
