// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Album> fetchAlbum() async {
//   final response =
//       await http.get(Uri.parse('http://192.168.1.15:8000/api/marques'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     print(response.body);
//     return Album.fromJson(jsonDecode(response.body)[0]);
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }

// class Album {
//   // final int userId;
//   // final int id;
//   final String libelle;

//   const Album({
//     // required this.userId,
//     // required this.id,
//     required this.libelle,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       // userId: json['userId'],
//       // id: json['id'],
//       libelle: json['libelle'],
//     );
//   }
// }

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late Future<Album> futureAlbum;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchAlbum();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<Album>(
//             future: futureAlbum,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data!.libelle);
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }

//               // By default, show a loading spinner.
//               return const CircularProgressIndicator();
//             },
//           ),
//         ),
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

  const Photo({
    required this.libelle,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      libelle: json['libelle'] as String,
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Isolate Demo';

    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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

class PhotosList extends StatelessWidget {
  const PhotosList({super.key, required this.photos});

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Text(photos[index].libelle);
      },
    );
  }
}






// import 'package:easysav_flutter2/acceuil_page.dart';
// import 'package:easysav_flutter2/profile_page.dart';
// import 'package:flutter/material.dart';

// void main() async {
//   runApp(const MyApp());
// }

// //StatelessWidget: inchangable
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const RootPage(),
//       theme: ThemeData(primaryColor: Colors.blue),
//     );
//   }
// }

// //StatefulWidget: peut raffraichir, changer
// class RootPage extends StatefulWidget {
//   const RootPage({Key? key}) : super(key: key);

//   @override
//   State<RootPage> createState() => _RootPageState();
// }

// class _RootPageState extends State<RootPage> {
//   int pageCourante = 0;

//   List<Widget> pages = const [
//     Acceuil(),
//     ProfilePage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("EasySAV YEAHHHH!"),
//       ),
//       body: pages[pageCourante],
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           debugPrint("FLOATING ACTION BUTTON");
//         },
//         child: const Icon(Icons.add),
//       ),
//       bottomNavigationBar: NavigationBar(
//         destinations: const [
//           NavigationDestination(icon: Icon(Icons.home), label: 'Acceuil'),
//           NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
//         ],
//         onDestinationSelected: (int index) {
//           setState(() {
//             pageCourante = index;
//           });
//         },
//         selectedIndex: pageCourante,
//       ),
//     );
//   }
// }
