import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  btn({super.key, required this.onclick, required this.text});
  final String text;
  final VoidCallback onclick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onclick,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple)),
    );
  }
}
