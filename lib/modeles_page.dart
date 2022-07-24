import 'package:flutter/material.dart';

class Modeles extends StatefulWidget {
  final String marque;
  const Modeles({Key? key, required this.marque}) : super(key: key);

  @override
  State<Modeles> createState() => _ModelesState();
}

class _ModelesState extends State<Modeles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("liste modeles"),
      ),
      body: Text('Page modeles ${widget.marque}'),
    );
  }
}
