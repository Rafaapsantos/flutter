import 'package:flutter/material.dart';

class Buttom extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color colorText;
  final Color borderColor;
  final double borderWidth;

  const Buttom(this.text,
      {super.key,
      required this.onPressed,
      this.color = Colors.white,
      this.colorText = Colors.black,
      this.borderWidth = 0,
      this.borderColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            side: BorderSide(color: borderColor, width: borderWidth)),
        child: Text(
          text,
          style: TextStyle(
            color: colorText,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
