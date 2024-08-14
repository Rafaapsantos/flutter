import 'package:flutter/material.dart';
import 'package:flutter_projeto_1/buttom.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              ),
              child: Image.asset(
                "assets/images/plants.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "CARE FOR YOUR",
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "PLANTS WITH",
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "INTELLIGENCE",
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Empower everyone",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "with a green thumb",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Buttom(
                      "Skip",
                      onPressed: () {},
                      color: Colors.grey.shade500.withOpacity(0.3),
                      colorText: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Buttom(
                      "Continue",
                      onPressed: () {},
                      color: Colors.white,
                      colorText: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
