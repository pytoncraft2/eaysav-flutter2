import 'package:easysav_flutter2/learn_flutter_page.dart';
import 'package:flutter/material.dart';
import 'dart:io'; // for using HttpClient
import 'dart:convert'; // for using json.decode()

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

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
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
