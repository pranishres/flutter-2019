import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'app_screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: FirstScreen());
  }
}
