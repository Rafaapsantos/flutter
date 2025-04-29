import 'package:flutter/material.dart';

class SmallCircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  const SmallCircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.size = 50,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: iconColor),
      ),
    );
  }
}
