import 'package:flutter/material.dart';
import 'package:textfield/sayac_state.dart';

class globalkeykullanimi extends StatefulWidget {
  const globalkeykullanimi({super.key});

  @override
  State<globalkeykullanimi> createState() => globalkeykullanimiState();
}

class globalkeykullanimiState extends State<globalkeykullanimi> {
  final sayacWidgetkey = GlobalKey<sayacWidgetState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Key Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butonaa basılma miktarı"),
            sayacWidget(
              key: sayacWidgetkey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacWidgetkey.currentState!.arttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

