import 'package:database_practise/sharedPrefrence/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final SignupemailController;
  final SignuppassController;
  const HomeScreen(
      {super.key,
      required this.SignupemailController,
      required this.SignuppassController});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final e_con = widget.SignupemailController;
    final p_con = widget.SignuppassController;
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginScreen(
                          e_controller: e_con,
                          p_controller: p_con,
                        )));
              },
              child: Text("Log out"))
        ],
        title: Text("HomeScreen"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
