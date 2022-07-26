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
        ),
        body: pages[pageCourante],
        drawer: const Drawer(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Text("OKAY"),
          ),
        ));
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
