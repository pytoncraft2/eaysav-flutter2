import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apprendre flutter"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.cabin),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("ACTION - - - - -");
            },
            icon: const Icon(Icons.info),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/img/EASYSAV-LOGO.png"),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.lightBlueAccent,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  "Texte widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.red,
              ),
              onPressed: () {
                debugPrint("ELEVATOR ON PRESS");
              },
              child: const Text("WHAT ?"),
            ),
            OutlinedButton(
              onPressed: (() {
                debugPrint("OUTLINE BOUTON");
              }),
              child: const Text("OUTLINED BOUTON !"),
            ),
            TextButton(
              onPressed: (() {
                debugPrint("TEXTE BOUTON");
              }),
              child: const Text("TEXTE BOUTON !"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("ROW TOUCHÉ !!!-----");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text("Row texte"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckBox,
              onChanged: (bool? newBool) {
                debugPrint("CHECKBOX CLIQUE !!!");
              },
            ),
            Image.network(
                "https://easysav.com/images/equipe/equipe-complete.png"),
            Image.network(
                "https://easysav.com/images/equipe/equipe-complete.png"),
            Image.network(
                "https://easysav.com/images/equipe/equipe-complete.png"),
          ],
        ),
      ),
    );
  }
}
