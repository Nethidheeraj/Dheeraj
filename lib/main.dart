import 'package:farm_harvest/screens/customer_get_otp_screen.dart';
import 'package:farm_harvest/screens/customer_otp_verification-screen.dart';
import 'package:farm_harvest/screens/customer_welcome_screen.dart';
import 'package:farm_harvest/screens/farmer_get_otp_screen.dart';
import 'package:farm_harvest/screens/farmer_welcome_screen.dart';
import 'package:farm_harvest/screens/splash_screen.dart';
import 'package:farm_harvest/screens/welcome_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
