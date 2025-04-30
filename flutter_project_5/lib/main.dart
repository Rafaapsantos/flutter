import 'package:flutter/material.dart';
import 'package:flutter_project_5/ui/search_movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SearchMovie',
      debugShowCheckedModeBanner: false,
      home: const SearchMovie(),
    );
  }
}
