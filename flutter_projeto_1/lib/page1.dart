import 'package:flutter/material.dart';
import 'package:flutter_projeto_1/page3.dart';
import 'package:flutter_projeto_1/widgets/buttom_page1.dart';
import 'package:flutter_projeto_1/widgets/image_card.dart';
import 'package:flutter_projeto_1/widgets/navigator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Icon(
          Icons.eco,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Não existe notificações",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            icon: const Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "MY POTS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Three tasks for today",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                    ),
                  ),
                  ButtomPage1("All"),
                  SizedBox(
                    width: 16,
                  ),
                  ButtomPage1("Indoor"),
                  SizedBox(
                    width: 16,
                  ),
                  ButtomPage1("Outdoor"),
                  SizedBox(
                    width: 16,
                  ),
                  ButtomPage1("Popular"),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ImageCard("plants3.png"),
                    SizedBox(
                      height: 24,
                    ),
                    ImageCard("plants2.jpg"),
                    SizedBox(
                      height: 24,
                    ),
                    ImageCard("plants.png")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await navigator(context, const Page3());
        },
        backgroundColor: Colors.white.withOpacity(0.3),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
