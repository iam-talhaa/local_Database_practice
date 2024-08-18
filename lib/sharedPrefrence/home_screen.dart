import 'package:database_practise/sharedPrefrence/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  final db = GetStorage();
  final my = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text("Log out"))
        ],
        title: Text("HomeScreen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notification "),
                Switch(value: my, onChanged: (v) {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommandation"),
                Switch(value: my, onChanged: (v) {}),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Black & White  theme"),
              Switch(
                  value: my,
                  onChanged: (value) {
                    setState(() {});
                  }),
            ])
          ],
        ),
      ),
    );
  }
}
