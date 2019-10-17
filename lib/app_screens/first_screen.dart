import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(decoration: TextDecoration.none, fontSize: 40.0),
        ),
      ),
    );
  }

  String generateLuckyNumber() {
    var random = Random();
    return "Your lucky number is ${random.nextInt(10)}";
  }
}
