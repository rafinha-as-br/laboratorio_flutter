import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = '/';
  static const String auth = '/auth';
  static const String userAccountGate = '/user-account-gate';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String profileSettings = '/profile-settings';
  static const String styling = '/styling';

  static Map<String, WidgetBuilder> get routes => {
    // splash: (context) => const SplashGate(),
    // auth: (context) => const AuthScreen(),
    // home: (context) => const HomeScreen(),
  };
}
