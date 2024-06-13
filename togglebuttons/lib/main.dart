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
  var toggleDurumlar = [false, true, false];
  int secilentoggleindex = 0;

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
            ToggleButtons(
              children: [
                Icon(Icons.looks_5),
                Icon(Icons.looks_3),
                Icon(Icons.looks_4),
              ],
              isSelected: toggleDurumlar,
              onPressed: (int secilenindex) {
                secilentoggleindex = secilenindex;
                print("${secilenindex + 1} togg secildi");
                setState(() {
                  toggleDurumlar[secilenindex] = !toggleDurumlar[secilenindex];
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
