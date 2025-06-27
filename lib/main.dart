import 'package:flutter/material.dart';
import 'package:hatud_express_passenger/ui/login_screen.dart';
import 'ui/signup_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogInScreen()
    );
  }
}