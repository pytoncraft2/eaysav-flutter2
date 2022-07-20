import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; // Add this line.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generateur de nom',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Generateur de nom'),
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
    final _suggestions = <WordPair>[]; // NEW
    final _saved = <WordPair>{}; // NEW
    final _biggerFont = const TextStyle(fontSize: 18); // NEW

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        final alreadySaved = _saved.contains(_suggestions[index]); // NEW
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
          trailing: Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null,
            semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
          ),
        );
      },
    );
  }
}
