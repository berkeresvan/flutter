import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences2/SayfaA.dart';

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
      home: const MyHomePage(
        title: "anasayfa",
      ),
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
  Future<Void?> veriKaydi() async {
    var sp = await SharedPreferences.getInstance();
    sp.setString("ad", "ahmet");
    sp.setInt("yas", 18);
    sp.setDouble("boy", 1.85);
    sp.setBool("BekarMi", true);

    var arkadasListe = <String>[];
    arkadasListe.add("Ece");
    arkadasListe.add("Ali");
    sp.setStringList("arkadasListe", arkadasListe);
    return null;
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
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  veriKaydi();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SayfaA()));
                },
                child: Text("Geçiş Yap "))
          ],
        ),
      ),
    );
  }
}
