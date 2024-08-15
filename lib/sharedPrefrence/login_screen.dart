import 'package:database_practise/sharedPrefrence/customWIdgets.dart';
import 'package:database_practise/sharedPrefrence/custom_formField.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    TextEditingController L_email = TextEditingController();
    TextEditingController L_pass = TextEditingController();

    return Scaffold(
      body: Container(
        height: Height * 1,
        width: width * 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.red,
          Colors.black,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Hello \nLogin",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: Height * 0.73,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  C_TextFormField(
                    mycontroller: L_email,
                    hint: 'Email or Phone',
                  ),
                  C_TextFormField(
                    mycontroller: L_pass,
                    hint: 'Password',
                  ),
                  C_button(
                    textcolor: Colors.white,
                    Mytext: "Sign IN",
                    ontap: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      prefs.setString('myemail', L_email.text);
                      prefs.setString('mypass', L_pass.text);

                      final String? check1 = prefs.getString('myemail');
                      final String? check2 = prefs.getString('mypass');
                      print('111111111:${check2} AND ${check1}');
                    },
                    mycolor: Color.fromARGB(255, 196, 8, 8),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child:
                            TextButton(onPressed: () {}, child: Text('Sign'))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
