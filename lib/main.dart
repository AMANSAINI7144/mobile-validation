import 'package:flutter/material.dart';
import 'package:mobile_validation/pages/mobilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: mobileValidation(),
      ),
    );
  }
}