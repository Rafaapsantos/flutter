import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Icon(
          Icons.eco,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("NOTIFICAÇÃO");
            },
            icon: const Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      // ignore: prefer_const_constructors
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: const Padding(
          padding: EdgeInsets.only(top: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MY POTS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Three tasks for today",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
