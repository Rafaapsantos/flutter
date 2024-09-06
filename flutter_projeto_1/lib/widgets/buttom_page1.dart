import 'package:flutter/material.dart';

class ButtomPage1 extends StatelessWidget {
  final String text;
  const ButtomPage1(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        side: const BorderSide(
          color: Colors.white,
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 8),
      ),
    );
  }
}
