import 'package:akvilonproject/router/router.dart';
import 'package:akvilonproject/ui/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final router = AppRouter();
  @override
  Widget build(BuildContext context) {
    var themeData = lightTheme;
    return MaterialApp.router(
      title: 'AkvilonProject',
      theme: themeData,
      routerConfig: router.config(),
    );
  }
}
