import 'package:flutter/material.dart';

class PhoneAuthScreen extends StatelessWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);
  static const String id = 'phone-auth-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
