import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_projeto_1/page1.dart';
import 'package:flutter_projeto_1/widgets/navigator.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/plants3.png",
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 232,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey.withOpacity(0.6),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PEACE LILIES",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "The bigger cousin of the beautiful peace lily, the Spatiphyllum Sendation is one of the most loved peace lily varieties in the world. In addition to its majestic white flowers.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Icon(Icons.sunny),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Bridht indirect light",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.water_drop_rounded),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Water twice a week",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: 32,
            child: ElevatedButton(
              onPressed: () async {
                await navigator(context, const Page1());
              },
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: const Color.fromARGB(255, 67, 236, 72)),
              child: const Icon(
                Icons.check,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: 32,
            child: ElevatedButton(
              onPressed: () async {
                await navigator(context, const Page1());
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16.0),
                backgroundColor: Colors.white,
              ),
              child: const Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(side: BorderSide(style: BorderStyle.none)),
        backgroundColor: Colors.white.withOpacity(0.3),
        child: const Icon(
          Icons.favorite_border,
          color: Colors.black,
        ),
      ),
    );
  }
}
