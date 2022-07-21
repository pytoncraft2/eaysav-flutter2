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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The list that contains information about photos
  List _loadedPhotos = [];

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
        body: SafeArea(
            child: _loadedPhotos.isEmpty
                ? Center(
                    child: ElevatedButton(
                      onPressed: _fetchData,
                      child: const Text('Load Photos'),
                    ),
                  )
                // The ListView that displays photos
                : ListView.builder(
                    itemCount: _loadedPhotos.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return ListTile(
                        leading: Image.asset(
                          'assets/images/logos/${(_loadedPhotos[index]["maSlug"])}.png',
                          width: 45,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          debugPrint(
                              'MARQUE : ${(_loadedPhotos[index]['libelle'])}');
                        },
                        title: Text(_loadedPhotos[index]['libelle']),
                      );
                    },
                  )));
  }
}
