import 'package:database_practise/sharedPrefrence/customWIdgets.dart';
import 'package:database_practise/sharedPrefrence/custom_formField.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  final e_controller;
  final p_controller;

  const LoginScreen(
      {super.key, required this.e_controller, required this.p_controller});

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
                      if (widget.e_controller == L_email) {
                        return print("Equal");
                      } else
                        print("NOT EQUAL");

                      if (L_email.text.isEmpty || L_pass.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('please fill all fields'),
                        ));
                        return;
                      }
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      prefs.setString('myemail', L_email.text);
                      prefs.setString('mypass', L_pass.text);

                      print(
                          'OLD:${widget.e_controller} :OLD  ${widget.p_controller}');
                      print("NEW :${L_email} : NEW ${L_pass}");
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
