import 'package:flutter/material.dart';
import 'package:flutter_project_3/body.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            "1° Projeto",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.black,
            dividerColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            tabs: [Tab(text: "TAB1"), Tab(text: "TAB2")],
          ),
        ),
        body: const TabBarView(children: [Body(), Body()]),
      ),
    );
  }
}
