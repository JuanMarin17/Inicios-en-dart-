import 'package:flutter/material.dart';
// import 'package:flutter_application_1/components/text.dart';
import 'package:flutter_application_1/components/textfield.dart';
// import 'package:flutter_application_1/layouts/column.dart';
// import 'package:flutter_application_1/layouts/rows.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: TextFieldExample()));
  }
}
