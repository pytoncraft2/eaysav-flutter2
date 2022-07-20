import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; // Add this line.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final motRandom = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: RandomMots(),
        ),
      ),
    );
  }
}

class RandomMots extends StatefulWidget {
  const RandomMots({Key? key}) : super(key: key);

  @override
  State<RandomMots> createState() => _RandomMotsState();
}

class _RandomMotsState extends State<RandomMots> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
