import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PAGE3"),
          backgroundColor: Colors.brown,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        drawer: const DrawerList());
  }
}
