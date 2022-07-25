// import 'package:flutter/material.dart';

// class Equipements extends StatelessWidget {
//   const Equipements({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//           child: ListView(
//         children: const <Widget>[
//           ListTile(
//             leading: Icon(Icons.map),
//             title: Text('Map'),
//           ),
//           ListTile(
//             leading: Icon(Icons.photo_album),
//             title: Text('Album'),
//           ),
//           ListTile(
//             leading: Icon(Icons.phone),
//             title: Text('Phone'),
//           ),
//         ],
//       )),
//     );
//   }
// }

import 'package:easysav_flutter2/modeles_page.dart';
import 'package:flutter/material.dart';

const int itemCount = 10;
List _equipements = [
  "Chaudières",
  "Bruleurs",
  "Chauffe-bains",
  "Clim intérieur",
  "Clim extérieur"
];

class Equipements extends StatelessWidget {
  final String marque;
  const Equipements({Key? key, required this.marque}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choisissez un equipement'),
      ),
      body: ListView.builder(
        itemCount: _equipements.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${(_equipements[index])}'),
            leading: const Icon(Icons.all_out),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Modeles(
                    marque: marque,
                    equipement: _equipements[index],
                    items: List<String>.generate(1400, (i) => 'Item $i'),
                    equipementSlug: 'chaudieres',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
