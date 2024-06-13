import 'package:drawer/sayfabir.dart';
import 'package:drawer/sayfaiki.dart';
import 'package:drawer/sayfauc.dart';
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
  var sayfaListe = [sayfabir(), sayfaiki(), sayfauc()];
  int secilenIndeks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      body: sayfaListe[secilenIndeks],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                "başlık tasarımı",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              decoration: BoxDecoration(color: Colors.deepPurple),
            ),
            ListTile(
              title: Text("sayfa bir"),
              onTap: () {
                setState(() {
                  secilenIndeks = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("sayfa iki", style: TextStyle(color: Colors.pink)),
              onTap: () {
                setState(() {
                  secilenIndeks = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("sayfa uç"),
              leading: Icon(
                Icons.looks_3,
                color: Colors.orange,
              ),
              onTap: () {
                setState(() {
                  secilenIndeks = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
