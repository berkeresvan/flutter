import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: non_constant_identifier_names
  var UlkelerListe = List<String>();
  String secilenUlke = "Türkiye";

  @override
  void initState() {
    super.initState();
    UlkelerListe.add("Türkiye");
    UlkelerListe.add("Almanya");
    UlkelerListe.add("Amerika");
    UlkelerListe.add("Çin");
    UlkelerListe.add("Norveç");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: secilenUlke,
              items: UlkelerListe.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text("Ülke : $value"),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? secilenveri) {
                setState(() {
                  secilenUlke = secilenveri;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
