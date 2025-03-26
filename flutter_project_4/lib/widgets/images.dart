import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;
  const ImageCard(
    this.image, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage("assets/images/$image"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                width: 150,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
