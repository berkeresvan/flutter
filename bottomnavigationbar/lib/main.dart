import 'package:bottomnavigationbar/sayfabir.dart';
import 'package:bottomnavigationbar/sayfaiki.dart';
import 'package:bottomnavigationbar/sayfauc.dart';
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
  var sayfalistesi = [sayfabir(), sayfaiki(), sayfauc()];
  int secilenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      body: sayfalistesi[secilenIndex],
      bottomNavigationBar: BottomNavMenu(),
    );
  }

  BottomNavigationBar BottomNavMenu() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "Bir"),
        BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "İki"),
        BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Uç"),
      ],
      backgroundColor: Colors.deepPurple,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.white,
      currentIndex: secilenIndex,
      onTap: (indeks) {
        setState(() {
          secilenIndex = indeks;
        });
      },
    );
  }
}
