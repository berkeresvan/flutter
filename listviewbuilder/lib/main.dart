import 'package:flutter/material.dart';
import 'package:listviewbuilder/detaysayfa.dart';

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
      home: const MyHomePage(title: 'DİNAMİK LİSTE'),
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
  var ulkeler = ["türkiye", "almanya", "çin", "amerika", "hollanda", "fransa"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ulkeler.length,
          itemBuilder: (context, indexs) {
            return GestureDetector(
              onTap: () {
                // print("${ulkeler[indexs]} seçildi");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => detaySayfa(
                              ulkeAdi: ulkeler[indexs],
                            )));
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              print("text ile ${ulkeler[indexs]} seçildi");
                            },
                            child: Text(ulkeler[indexs])),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
