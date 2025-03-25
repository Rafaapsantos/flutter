import 'package:flutter/material.dart';
import 'package:flutter_project_1/screen/page1.dart';
import 'package:flutter_project_1/widgets/button.dart';
import 'package:flutter_project_1/widgets/navigate_to.dart';

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
                Colors.black.withValues(alpha: 128),
                BlendMode.darken,
              ),
              child: Image.asset("assets/images/plants.png", fit: BoxFit.cover),
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
                    "CARE FOR YOUR PLANTS WITH INTELLIGENCE",
                    style: TextStyle(fontSize: 32.0, color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 152.0),
                    child: Text(
                      "Empower everyone with a green thumb",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                  Button(
                    "Skip",
                    onPressed: () async {
                      await navigateTo(context, const Page1());
                    },
                    color: Colors.grey.shade500.withValues(alpha: 128),
                    colorText: Colors.black,
                    borderColor: Colors.transparent,
                  ),
                  Button(
                    "Continue",
                    onPressed: () async {
                      await navigateTo(context, const Page1());
                    },
                    color: Colors.white,
                    colorText: Colors.black,
                    borderColor: Colors.white,
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
