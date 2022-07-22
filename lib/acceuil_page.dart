// import 'package:flutter/material.dart';
// import 'dart:io'; // for using HttpClient
// import 'dart:convert'; // for using json.decode()

// class Acceuil extends StatelessWidget {
//   const Acceuil({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(

//       child: ElevatedButton(
//         onPressed: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (BuildContext context) {
//                 return const LearnFlutterPage();
//               },
//             ),
//           );
//         },
//         child: const Text("Acceuil page"),
//       ),
//     );
//   }
// }

// class Acceuil extends StatefulWidget {
//   const Acceuil({Key? key}) : super(key: key);

//   @override
//   State<Acceuil> createState() => _AcceuilState();
// }

// class _AcceuilState extends State<Acceuil> {
//   // The list that contains information about photos
//   List _loadedPhotos = [];

//   // The function that fetches data from the API
//   Future<void> _fetchData() async {
//     // const apiUrl = 'https://jsonplaceholder.typicode.com/photos';
//     const apiUrl = 'http://192.168.1.15:8000/api/marques';

//     HttpClient client = HttpClient();
//     client.autoUncompress = true;

//     final HttpClientRequest request = await client.getUrl(Uri.parse(apiUrl));
//     request.headers
//         .set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
//     final HttpClientResponse response = await request.close();

//     final String content = await response.transform(utf8.decoder).join();
//     final List data = json.decode(content);

//     dispose() {
//       super.dispose();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: // The ListView that displays photos
//             _loadedPhotos.isEmpty
//                 ? const Icon(Icons.access_alarm)
//                 : ListView.builder(
//                     itemCount: _loadedPhotos.length,
//                     itemBuilder: (BuildContext ctx, index) {
//                       return ListTile(
//                         leading: Image.asset(
//                           'assets/images/logos/${(_loadedPhotos[index]["maSlug"])}.png',
//                           width: 45,
//                           fit: BoxFit.cover,
//                         ),
//                         onTap: () {
//                           debugPrint(
//                               'MARQUE : ${(_loadedPhotos[index]['libelle'])}');
//                         },
//                         title: Text(_loadedPhotos[index]['libelle']),
//                       );
//                     },
//                   ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onTap: () {
            debugPrint('MARQUE : ${(photos[index].libelle)}');
          },
          title: Text(photos[index].libelle),
        );
      },
    );
  }
}
