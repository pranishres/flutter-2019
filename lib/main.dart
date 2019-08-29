import 'package:english_words/english_words.dart';
import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter Appbar'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

/**
    StatefulWidget example
 */

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  //Prefixing an identifier with an underscore enforces privacy in the Dart language./
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is title'),
      ),
      body: _buildSuggestionList(),
    );

//    final wordPair = WordPair.random();
//    return Text(wordPair.asPascalCase);
  }

  Widget _buildSuggestionList() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(prefix0.generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(prefix0.WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
