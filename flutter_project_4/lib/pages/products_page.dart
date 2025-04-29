import 'package:flutter/material.dart';
import 'package:flutter_project_4/widgets/buttom_icon.dart';
import 'package:flutter_project_4/widgets/images.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ButtonIcon(
              size: 50,
              Icons.favorite_border,
              Colors.white,
              Colors.black,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'PRODUCT DETAILS',
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Imagem do produto
            ImageCard('photo1.jpg', 500),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'WOOD CHAIR',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF003829),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '-30%',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Preço
                  Row(
                    children: const [
                      Text(
                        '\$160.00',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Color.fromARGB(255, 41, 39, 39),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '\$140.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Descrição
                  const Text(
                    'Our showroom, you\'ll discover an array of meticulously curated furniture collections that span the spectrum from timeless classics to avant-garde designs...',
                    style: TextStyle(
                      color: Color.fromARGB(255, 41, 39, 39),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Botões
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF003829),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: const Text(
                            'Add To Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFF003829),
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: const Text(
                            'Buy Now',
                            style: TextStyle(
                              color: Color(0xFF003829),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
