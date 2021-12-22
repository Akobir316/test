import 'package:flutter/material.dart';
import 'package:olx_clone/paths/images.dart';
import 'package:olx_clone/widgets/auth_ui.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String id = 'login-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade800,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    MyImages.logo,
                    width: 130,
                    height: 150,
                    color: Colors.cyan.shade900,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Buy or Sell',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.cyan.shade900,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: const AuthUi(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'If you continue, you are accepting\nTerms and Conditions and Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
