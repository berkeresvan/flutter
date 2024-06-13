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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'İlham Ver '),
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
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: ekranyuksekligi / 100, bottom: ekranyuksekligi / 100),
              child: SizedBox(
                width: ekrangenisligi / 2,
                height: ekranyuksekligi / 5,
                child: Image.asset(
                  "resimler/araba.jpg",
                ),
              ),
            ),
            Text(
              "Steve Jobs",
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: ekrangenisligi / 25),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  left: ekrangenisligi / 100, right: ekrangenisligi / 100),
              child: Text(
                "baya anlamlı bir söz baya anlamlı bir söz baya anlamlı bir söz baya anlamlı bir söz",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: ekrangenisligi / 25),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: ekranyuksekligi / 100),
              child: SizedBox(
                width: ekrangenisligi / 2,
                height: ekranyuksekligi / 25,
                child: ElevatedButton(
                  onPressed: () {
                    print("ilham verildi");
                  },
                  child: Text(
                    "Tıklaa bana",
                    style: TextStyle(
                        color: Colors.white, fontSize: ekrangenisligi / 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                ),
              ),
            ),
          ],
        ));
  }
}
