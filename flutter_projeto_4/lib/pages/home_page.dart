import 'package:flutter/material.dart';
import 'package:flutter_projeto_4/pages/shopping_page.dart';
import 'package:flutter_projeto_4/widgets/buttom.dart';
import 'package:flutter_projeto_4/widgets/images.dart';
import 'package:flutter_projeto_4/widgets/navigator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 48.0,
              right: 16.0,
              left: 16,
            ),
            child: Column(
              children: [
                const ImageCard("photo2.webp"),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'FURNITURE',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                const Divider(
                  color: Colors.black,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 100),
                      child: Text(
                        "new",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Padding(
                      padding: EdgeInsets.only(bottom: 100),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 20,
                        child: Icon(
                          Icons.trending_flat,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: 80),
                    Column(
                      children: [
                        Text(
                          "LEGACY",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "LANE FINE ",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "FURNITURE",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                ),
                Buttom(
                  "Continue",
                  onPressed: () async {
                    await navigator(context, const ShoppingPage());
                  },
                  color: Colors.orange,
                  colorText: Colors.black,
                  borderColor: Colors.transparent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
