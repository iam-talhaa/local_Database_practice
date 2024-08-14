import 'package:flutter/material.dart';

class C_button extends StatelessWidget {
  final mycolor;
  final textcolor;
  final Mytext;
  VoidCallback ontap;
  C_button(
      {super.key,
      required this.Mytext,
      this.mycolor,
      this.textcolor,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: mycolor,
            border: Border.all(width: 3, color: Colors.white),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              '${Mytext}',
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: textcolor, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
