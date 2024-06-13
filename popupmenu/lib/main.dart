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
            PopupMenuButton(
              child: Icon(Icons.open_in_new),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Text(
                      "sil",
                      style: TextStyle(color: Colors.red),
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Text(
                      "guncelle",
                      style: TextStyle(color: Colors.indigo),
                    ))
              ],
              onCanceled: () {
                print("seçim yapılmadı");
              },
              onSelected: (MenuItemValue) {
                if (MenuItemValue == 1) {
                  print("sil seçildi");
                }
                if (MenuItemValue == 2) {
                  print("güncelle seçildi");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
