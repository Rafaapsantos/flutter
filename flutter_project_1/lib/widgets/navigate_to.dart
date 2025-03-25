import 'package:flutter/material.dart';

Future navigateTo(BuildContext context, Widget page) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) {
        return page;
      },
    ),
  );
}
