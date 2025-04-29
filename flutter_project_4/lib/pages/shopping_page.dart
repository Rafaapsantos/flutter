import 'package:flutter/material.dart';
import 'package:flutter_project_4/pages/products_page.dart';
import 'package:flutter_project_4/widgets/buttom_icon.dart';
import 'package:flutter_project_4/widgets/circle_button.dart';
import 'package:flutter_project_4/widgets/create_button.dart';
import 'package:flutter_project_4/widgets/images.dart';
import 'package:flutter_project_4/widgets/navigator.dart';
import 'package:flutter_project_4/widgets/small_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 36, left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'DECOR.',
                    style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 44),
                    ),
                  ),
                  SizedBox(width: 224),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Stack(
                      children: [
                        const Icon(Icons.shopping_basket, color: Colors.black),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(padding: const EdgeInsets.all(4)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.grey),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28),

              Row(
                children: [
                  ButtonIcon(
                    Icons.chair,
                    const Color(0xFF003829),
                    Colors.white,
                    onPressed: () async {
                      await navigator(context, const ProductsPage());
                    },
                  ),
                  SizedBox(width: 32),
                  ButtonIcon(
                    Icons.table_bar,
                    Colors.white,
                    Colors.black,
                    onPressed: () {},
                  ),
                  SizedBox(width: 32),
                  ButtonIcon(
                    Icons.bed,
                    Colors.white,
                    Colors.black,
                    onPressed: () {},
                  ),
                  SizedBox(width: 32),
                  ButtonIcon(
                    Icons.chair_alt,
                    Colors.white,
                    Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 200),

                  Text(
                    'Show More',
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 61, 60, 60),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              ImageCard("photo4.png", 400),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleButton(icon: Icons.chevron_left, onPressed: () {}),
                  const SizedBox(width: 12),
                  const Text(
                    '• • •',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                      letterSpacing: 4,
                    ),
                  ),
                  const SizedBox(width: 12),
                  CircleButton(icon: Icons.chevron_right, onPressed: () {}),
                ],
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF003829),

                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SmallCircleButton(icon: Icons.home, onPressed: () {}),
                    CreateButton(onPressed: () {}),
                    SmallCircleButton(icon: Icons.settings, onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
