import 'package:flutter/material.dart';

// class Modeles extends StatefulWidget {
//   final String marque;
//   final String equipement;
//   final List<String> items;

//   const Modeles(
//       {Key? key,
//       required this.marque,
//       required this.equipement,
//       required this.items})
//       : super(key: key);

//   @override
//   State<Modeles> createState() => _ModelesState();
// }

// class _ModelesState extends State<Modeles> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${widget.equipement} ${widget.marque}'),
//       ),
//       body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(items[index]),
//             );
//           },
//         ),
//     );
//   }
// }

class Modeles extends StatelessWidget {
  final String marque;
  final String equipement;
  final List<String> items;

  const Modeles(
      {Key? key,
      required this.marque,
      required this.equipement,
      required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
