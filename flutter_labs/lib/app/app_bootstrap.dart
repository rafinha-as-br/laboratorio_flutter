import 'package:flutter/material.dart';
import 'app.dart';
import 'app_injector.dart';

class AppBootstrap {
  static Future<void> startup() async {
    WidgetsFlutterBinding.ensureInitialized();
    
    // Initialize Dependency Injection
    await AppInjector.init();
    
    // Start the application
    runApp(const App());
  }
}
