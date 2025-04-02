import 'package:flutter/material.dart';
import 'package:flutter_project_3/models/dog.dart';
import 'package:flutter_project_3/widgets/button.dart';
import 'widgets/image_card.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool _isGridView = true;

  final List<Dog> dogs = [
    const Dog(nome: "Jack Russel", foto: "assets/images/dog1.png"),
    const Dog(nome: "Labrador", foto: "assets/images/dog2.png"),
    const Dog(nome: "Pug", foto: "assets/images/dog3.png"),
    const Dog(nome: "Fila", foto: "assets/images/dog4.png"),
    const Dog(nome: "Pastor", foto: "assets/images/dog5.png"),
    const Dog(nome: "Jack Russel", foto: "assets/images/dog1.png"),
    const Dog(nome: "Labrador", foto: "assets/images/dog2.png"),
    const Dog(nome: "Pug", foto: "assets/images/dog3.png"),
    const Dog(nome: "Fila", foto: "assets/images/dog4.png"),
    const Dog(nome: "Pastor", foto: "assets/images/dog5.png"),
    const Dog(nome: "Jack Russel", foto: "assets/images/dog1.png"),
    const Dog(nome: "Labrador", foto: "assets/images/dog2.png"),
    const Dog(nome: "Pug", foto: "assets/images/dog3.png"),
    const Dog(nome: "Fila", foto: "assets/images/dog4.png"),
    const Dog(nome: "Pastor", foto: "assets/images/dog5.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "ListView & GridView",
          style: TextStyle(fontSize: 17),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            color: Colors.black,
            onPressed: () {
              print("lista");
              setState(() {
                _isGridView = false;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.grid_on),
            onPressed: () {
              print("grid");
              setState(() {
                _isGridView = true;
              });
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_isGridView)
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: dogs.length,
                itemBuilder: (context, index) {
                  final Dog dog = dogs[index];
                  return ImageCard(
                    dog: dog,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16) +
                        const EdgeInsets.only(bottom: 128, top: 8),
                    padding: const EdgeInsets.all(8),
                  );
                },
              ),
            )
          else
            Expanded(
              child: ListView.builder(
                itemExtent: 350,
                itemCount: dogs.length,
                itemBuilder: (context, index) {
                  final Dog dog = dogs[index];
                  return ImageCard(
                    dog: dog,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 96) +
                        const EdgeInsets.only(bottom: 296, top: 8),
                    padding: const EdgeInsets.all(8),
                  );
                },
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Button("Botão", onPressed: () {}, color: Colors.brown),
          ),
        ],
      ),
    );
  }
}
