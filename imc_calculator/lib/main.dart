import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/screens/imc_home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primary,
          foregroundColor: Colors.white,
          title: Text('Imc Calculator'),
        ),
        backgroundColor: AppColor.background,
        body: ImcHomeScreen(),
      ),
    );
  }
}
