import 'package:flutter/material.dart';
import 'package:flutter_projeto_1/widgets/buttom.dart';
import 'package:flutter_projeto_1/widgets/buttom_page1.dart';

class ImageCard extends StatelessWidget {
  final String image;
  const ImageCard(
    this.image, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage("assets/images/$image"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: 150,
                height: 40,
                child: Buttom(
                  "Snake plant",
                  onPressed: () {},
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
