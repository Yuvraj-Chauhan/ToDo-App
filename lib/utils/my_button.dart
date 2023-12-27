import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  VoidCallback onpressed;

  MyButton({super.key, required this.name, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      color: Colors.yellow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      child: Text(name),
    );
  }
}
