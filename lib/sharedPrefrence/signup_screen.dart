import 'package:database_practise/sharedPrefrence/customWIdgets.dart';
import 'package:database_practise/sharedPrefrence/custom_formField.dart';
import 'package:database_practise/sharedPrefrence/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();

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
                "Create Your\nAccount",
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
                    hint: 'Full Names',
                  ),
                  C_TextFormField(
                    mycontroller: emailController,
                    hint: 'Email or Phone',
                  ),
                  C_TextFormField(
                    mycontroller: passController,
                    hint: 'Password',
                  ),
                  C_TextFormField(
                    hint: 'Confirm password',
                  ),
                  C_button(
                    textcolor: Colors.white,
                    Mytext: "SignUp",
                    ontap: () async {
                      if (emailController.text.isEmpty ||
                          passController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('please fill all fields'),
                        ));
                        return;
                      }
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      await prefs.setString(
                          'myemail', emailController.toString());
                      await prefs.setString(
                          'mypass', passController.toString());
                      // print(emailController);
                      // print(passController);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen(
                                SignupemailController: emailController,
                                SignuppassController: passController,
                              )));
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
