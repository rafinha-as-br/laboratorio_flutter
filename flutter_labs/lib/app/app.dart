import 'package:flutter/material.dart';
import 'app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Labs',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        // The application starts at AppRoutes.splash
        initialRoute: AppRoutes.splash,
        onGenerateRoute: (settings) {
          // Fallback or dynamic routing if needed
          final routeBuilder = AppRoutes.routes[settings.name];
          if (routeBuilder != null) {
            return MaterialPageRoute(
              builder: routeBuilder,
              settings: settings,
            );
          }
          // Default to splash if route not found
          return MaterialPageRoute(builder: (context) => const SplashGate());
        },
      );
  }
}

// Minimal Placeholder for SplashGate to allow App to compile
class SplashGate extends StatelessWidget {
  const SplashGate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
