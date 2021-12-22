import 'package:flutter/material.dart';
import 'package:olx_clone/screens/auth/phone_auth_screen.dart';

import 'package:olx_clone/screens/login_screen.dart';

import 'package:olx_clone/screens/splash_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        const Duration(seconds: 2),
      ),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: SplashScreen(),
            debugShowCheckedModeBanner: false,
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Olx demo',
            theme: ThemeData(
              primaryColor: Colors.cyan.shade900,
              fontFamily: 'Lato',
            ),
            home: LoginScreen(),
            routes: {
              LoginScreen.id: (context) => LoginScreen(),
              PhoneAuthScreen.id: (context) => PhoneAuthScreen(),
            },
          );
        }
      },
    );
  }
}
