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
