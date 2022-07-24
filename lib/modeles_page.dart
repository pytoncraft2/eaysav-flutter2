import 'package:flutter/material.dart';

class Modeles extends StatefulWidget {
  final String marque;
  final String equipement;
  const Modeles({Key? key, required this.marque, required this.equipement})
      : super(key: key);

  @override
  State<Modeles> createState() => _ModelesState();
}

class _ModelesState extends State<Modeles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("liste modeles wtf"),
      ),
      body: Text('${widget.equipement} ${widget.marque}'),
    );
  }
}
