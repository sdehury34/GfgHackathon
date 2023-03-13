import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nitc_coin/login/googlesignin.dart';
import 'package:provider/provider.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black,Colors.blue,Colors.black])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 150.0, 0, 0),
              child: Center(
                  child: Text('Hey there \nWelcome back.',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/hand.gif')),
            ),
            Center(
              child: SizedBox(
                height: 40,
                child: SignInButton(
                  Buttons.Google,
                  mini: false,
                  elevation: 10.0,
                  text: 'Sign in with Google',
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogin();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
