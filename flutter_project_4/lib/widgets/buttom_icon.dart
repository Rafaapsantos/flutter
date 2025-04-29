import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final Color? borderColor;
  final double size;

  const ButtonIcon(
    this.icon,
    this.backgroundColor,
    this.iconColor, {
    this.borderColor,
    this.size = 70,
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        side:
            borderColor != null
                ? BorderSide(color: borderColor!, width: 2.0)
                : BorderSide.none,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: Size(size, size),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Icon(icon, color: iconColor, size: 36),
    );
  }
}
