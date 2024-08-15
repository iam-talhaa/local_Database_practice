import 'package:database_practise/sharedPrefrence/customWIdgets.dart';
import 'package:database_practise/sharedPrefrence/signup_Screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.black]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Fitness Club ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Text(
                "Welcome Back ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
            ),
            C_button(
              ontap: () {},
              Mytext: 'SIGN IN',
              textcolor: Colors.white,
            ),
            C_button(
              ontap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignUpScreen()));
              },
              mycolor: Colors.white,
              Mytext: 'SIGNUP',
            ),
          ],
        ),
      ),
    );
  }
}
