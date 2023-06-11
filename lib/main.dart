import 'package:flutter/material.dart';
import 'package:movie/ui/screens/welcome_screen.dart';
import 'package:movie/utils/constants/app_constants.dart';
import 'package:movie/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: MovieTheme.getLightTheme('en'),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
