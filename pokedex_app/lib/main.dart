import 'package:flutter/material.dart';
import 'package:pokedex_app/screens/home_page.dart';

void main() async {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Pokédex',
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  );
}
