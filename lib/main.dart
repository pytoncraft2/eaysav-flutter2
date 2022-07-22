// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<List<Photo>> fetchPhotos(http.Client client) async {
//   final response =
//       await client.get(Uri.parse('http://192.168.1.15:8000/api/marques'));
//   // .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

//   // Use the compute function to run parsePhotos in a separate isolate.
//   return compute(parsePhotos, response.body);
// }

// // A function that converts a response body into a List<Photo>.
// List<Photo> parsePhotos(String responseBody) {
//   final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

//   return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
// }

// class Photo {
//   final String libelle;
//   final String maSlug;

//   const Photo({
//     required this.libelle,
//     required this.maSlug,
//   });

//   factory Photo.fromJson(Map<String, dynamic> json) {
//     return Photo(
//       libelle: json['libelle'] as String,
//       maSlug: json['maSlug'] as String,
//     );
//   }
// }

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Isolate Demo';

//     return const MaterialApp(
//       title: appTitle,
//       home: MyHomePage(title: appTitle),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: FutureBuilder<List<Photo>>(
//         future: fetchPhotos(http.Client()),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return const Center(
//               child: Text('An error has occurred!'),
//             );
//           } else if (snapshot.hasData) {
//             return PhotosList(photos: snapshot.data!);
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// class PhotosList extends StatelessWidget {
//   const PhotosList({super.key, required this.photos});

//   final List<Photo> photos;

//   @override
//   Widget build(BuildContext context) {
//     // return GridView.builder(
//     //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//     //     crossAxisCount: 4,
//     //   ),
//     //   itemCount: photos.length,
//     //   itemBuilder: (context, index) {
//     //     return Image.asset(
//     //       'assets/images/logos/${(photos[index].maSlug)}.png',
//     //       width: 45,
//     //       fit: BoxFit.cover,
//     //     );
//     //   },
//     // );
//     return ListView.builder(
//       itemCount: photos.length,
//       itemBuilder: (BuildContext ctx, index) {
//         return ListTile(
//           leading: Image.asset(
//             'assets/images/logos/${(photos[index].maSlug)}.png',
//             width: 45,
//             fit: BoxFit.cover,
//           ),
//           onTap: () {
//             debugPrint('MARQUE : ${(photos[index].libelle)}');
//           },
//           title: Text(photos[index].libelle),
//         );
//       },
//     );
//   }
// }

import 'package:easysav_flutter2/acceuil_page.dart';
import 'package:easysav_flutter2/profile_page.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

//StatelessWidget: inchangable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

//StatefulWidget: peut raffraichir, changer
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageCourante = 0;

  List<Widget> pages = const [
    Acceuil(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EasySAV YEAHHHH!"),
      ),
      body: pages[pageCourante],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FLOATING ACTION BUTTON");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Acceuil'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            pageCourante = index;
          });
        },
        selectedIndex: pageCourante,
      ),
    );
  }
}
