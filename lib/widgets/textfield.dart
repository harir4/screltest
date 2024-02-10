import 'package:flutter/material.dart';

class txtfield extends StatelessWidget {
  txtfield({super.key, required this.text, required this.con});

  final String text;
  final TextEditingController con;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: con,
      decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
