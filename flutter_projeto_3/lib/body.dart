import 'package:flutter/material.dart';
import 'package:flutter_application_1/page1.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'widgets/navigator.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "DOGS",
          style: TextStyle(
            fontSize: 25,
            color: Colors.brown[700],
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.brown,
            decorationStyle: TextDecorationStyle.dotted,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            height: 260,
            child: PageView(
              children: [
                for (int i = 1; i <= 5; i++)
                  Image.asset(
                    "assets/imagens/dog$i.png",
                    fit: BoxFit.cover,
                  )
              ],
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
              "botão 1",
              onPressed: () async {
                await navigator(context, const Page1());
              },
            ),
            Button(
              "botão 2",
              onPressed: () {},
            ),
            Button(
              "botão 3",
              onPressed: () async {
                await navigator(context, const Page3());
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
              "snack",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("ESSES DOGS SÃO MUITO FOFOS!!"),
                    action: SnackBarAction(
                      label: "OK",
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
            Button(
              "dialog",
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return PopScope(
                      onPopInvoked: (_) => false,
                      child: AlertDialog(
                        title: const Text("ESSES DOGS SÃO MUITO FOFOS!!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("CONFIRMAR"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("CANCELAR"),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            Button(
              "toast",
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "ESSES DOGS SÃO MUITO FOFOS!!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
          ],
        ),
      ],
    );
  }
}
