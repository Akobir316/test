import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:olx_clone/screens/auth/phone_auth_screen.dart';

class AuthUi extends StatelessWidget {
  const AuthUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 220,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, PhoneAuthScreen.id);
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.phone_android_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Continue with Phone',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SignInButton(Buttons.Google,
              text: 'Continue with Google', onPressed: () {}),
          SignInButton(Buttons.FacebookNew,
              text: 'Continue with Facebook', onPressed: () {}),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'OR',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Login with Email',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
