import 'package:flutter/material.dart';
import 'package:mobile_validation/pages/mobilePage.dart';
import 'package:mobile_validation/pages/otpPage.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Text('Go back!')
        ),
    );
  }
}
