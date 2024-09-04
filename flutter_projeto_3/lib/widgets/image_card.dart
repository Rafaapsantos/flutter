import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/dog.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/widgets/navigator.dart';

final class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.dog,
    required this.margin,
    required this.padding,
  });
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final Dog dog;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigator(context, Page2(dog: dog));
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            dog.foto,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: margin,
            padding: padding,
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              dog.nome,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
