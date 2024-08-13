import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
  print("testing");
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red, Colors.black]),
      ),
    );
  }
}
