import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final Color borderColor;
  final double size;
  final double iconSize;

  const CircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.transparent,
    this.iconColor = Colors.black,
    this.borderColor = Colors.grey,
    this.size = 40,
    this.iconSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor),
      ),
      child: IconButton(
        icon: Icon(icon, size: iconSize, color: iconColor),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
