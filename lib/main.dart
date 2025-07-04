import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/theme/theme.dart';
import 'package:hatud_express_passenger/ui/navigation/dashboard_screen.dart';
import 'ui/auth/signup_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const SignUpScreen(),
    );
  }
}
