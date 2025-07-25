import 'package:flutter/material.dart';
import 'package:ludycom_test/config/di/locator.dart';
import 'package:ludycom_test/config/router/app_router.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().appRouter,
      title: 'Catbreeds',
    );
  }
}
