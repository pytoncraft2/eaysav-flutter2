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
        title: const Text("EasySAV 🔥"),
        actions: [
          IconButton(
              onPressed: () => {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    )
                  },
              icon: const Icon(Icons.search))
        ],
      ),
      body: pages[pageCourante],
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
  // return Scaffold(
  //   appBar: AppBar(
  //     title: const Text("EasySAV 🔥"),
  //     actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
  //   ),
  //   body: pages[pageCourante],
  //   floatingActionButton: FloatingActionButton(
  //     onPressed: () {
  //       debugPrint("FLOATING ACTION BUTTON");
  //     },
  //     child: const Icon(Icons.add),
  //   ),
  //   bottomNavigationBar: NavigationBar(
  //     destinations: const [
  //       NavigationDestination(icon: Icon(Icons.home), label: 'Acceuil'),
  //       NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
  //     ],
  //     onDestinationSelected: (int index) {
  //       setState(() {
  //         pageCourante = index;
  //       });
  //     },
  //     selectedIndex: pageCourante,
  //   ),
  // );
  // }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Apple",
    "Bannane",
    "Champigon",
    "Pomme",
    "Artichaud",
    "Navet",
    "Nougat",
    "Caramel"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    //nettoie la barre
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        //fermer et partir de la barre de recherche
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
