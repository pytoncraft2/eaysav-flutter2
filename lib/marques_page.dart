import 'package:flutter/material.dart';

class Marques extends StatefulWidget {
  Marques({Key? key}) : super(key: key);

  @override
  State<Marques> createState() => _MarquesState();
}

class _MarquesState extends State<Marques> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// SafeArea(
//         child: _loadedPhotos.isEmpty
//             ? Center(
//                 child: ElevatedButton(
//                   onPressed: _fetchData,
//                   child: const Text('Load Photos'),
//                 ),
//               )
//             // The ListView that displays photos
//             : ListView.builder(
//                 itemCount: _loadedPhotos.length,
//                 itemBuilder: (BuildContext ctx, index) {
//                   return ListTile(
//                     leading: Image.asset(
//                       'assets/images/logos/${(_loadedPhotos[index]["maSlug"])}.png',
//                       width: 45,
//                       fit: BoxFit.cover,
//                     ),
//                     onTap: () {
//                       debugPrint(
//                           'MARQUE : ${(_loadedPhotos[index]['libelle'])}');
//                     },
//                     title: Text(_loadedPhotos[index]['libelle']),
//                   );
//                 },
//               ),
//       ),