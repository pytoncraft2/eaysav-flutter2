import 'package:easysav_flutter2/equipements_page.dart';
import 'package:flutter/material.dart';
import 'dart:io'; // for using HttpClient
import 'dart:convert'; // for using json.decode()

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: Acceuil(),
    );
  }
}

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  // The list that contains information about photos
  int pageCourante = 0;
  List _loadedPhotos = [];

  List<Widget> pages = const [
    Acceuil(),
    Equipements(),
  ];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    // const apiUrl = 'https://jsonplaceholder.typicode.com/photos';
    const apiUrl = 'http://192.168.1.15:8000/api/marques';

    HttpClient client = HttpClient();
    client.autoUncompress = true;

    final HttpClientRequest request = await client.getUrl(Uri.parse(apiUrl));
    request.headers
        .set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    final HttpClientResponse response = await request.close();

    final String content = await response.transform(utf8.decoder).join();
    final List data = json.decode(content);

    setState(() {
      print(data);
      _loadedPhotos = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
        title: const Text('Kindacode.com'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_chart),
            onPressed: () {
              debugPrint("Icon chart test");
            },
          ),
        ],
      ),
      // body:
    );
  }
}
