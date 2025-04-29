import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final Color borderColor;
  final double width;
  final double height;
  final String text;
  final double borderWidth;

  const CreateButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF003829),

    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.borderColor = Colors.white,
    this.width = 130,
    this.height = 55,
    this.text = 'Create',
    this.borderWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: borderWidth),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.drag_handle, color: iconColor),
            const SizedBox(width: 8),
            Text(text, style: TextStyle(color: textColor, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
