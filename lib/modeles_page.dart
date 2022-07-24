import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
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
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return PhotosList(photos: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response =
      await client.get(Uri.parse('http://192.168.1.15:8000/api/marques'));
  // .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

class Photo {
  final String libelle;
  final String maSlug;

  const Photo({
    required this.libelle,
    required this.maSlug,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      libelle: json['libelle'] as String,
      maSlug: json['maSlug'] as String,
    );
  }
}

class PhotosList extends StatelessWidget {
  const PhotosList({super.key, required this.photos});

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    // return GridView.builder(
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 4,
    //   ),
    //   itemCount: photos.length,
    //   itemBuilder: (context, index) {
    //     return Image.asset(
    //       'assets/images/logos/${(photos[index].maSlug)}.png',
    //       width: 45,
    //       fit: BoxFit.cover,
    //     );
    //   },
    // );
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (BuildContext ctx, index) {
        return ListTile(
          leading: Image.asset(
            'assets/images/logos/${(photos[index].maSlug)}.png',
            width: 45,
            fit: BoxFit.cover,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            print("TAP TAP");
          },
          title: Text(photos[index].libelle),
        );
      },
    );
  }
}
