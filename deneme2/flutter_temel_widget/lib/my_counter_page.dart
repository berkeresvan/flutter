import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIKLAMA SAYAR"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          butonabasilmamiktari(),
          Text(_sayac.toString(),
              style: Theme.of(context).textTheme.displayLarge)
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayaciarttir();
          debugPrint("butona basıldı ve 1 arttırıldı $_sayac");
        },
        child: Icon(Icons.add_card_outlined),
      ),
    );
  }

  void sayaciarttir() {
    setState(() {});
    _sayac++;
  }
}

class butonabasilmamiktari extends StatelessWidget {
  const butonabasilmamiktari({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(style: TextStyle(fontSize: 24), "butona basılma miktarı");
  }
}
