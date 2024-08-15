import 'package:flutter/material.dart';

class C_TextFormField extends StatelessWidget {
  final mycontroller;
  final hint;
  const C_TextFormField({super.key, required this.hint, this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hint,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
