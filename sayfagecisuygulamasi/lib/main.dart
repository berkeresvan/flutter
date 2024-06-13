// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sayfagecisuygulamasi/kisiler.dart';

import 'package:sayfagecisuygulamasi/sayfaA.dart';

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
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anaasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // ignore: unused_local_variable
                  var kisi =
                      kisiler(isim: "ahmet", yas: 18, boy: 1.78, bekarMi: true);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SayfaA(
                                kisi: kisi,
                              )));
                },
                child: Text("Sayfa A git")),
          ],
        ),
      ),
    );
  }
}
