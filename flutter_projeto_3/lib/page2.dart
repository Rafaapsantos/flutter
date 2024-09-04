import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/dog.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key, required this.dog});
  final Dog dog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.nome),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Image.asset(dog.foto),
    );
  }
}
