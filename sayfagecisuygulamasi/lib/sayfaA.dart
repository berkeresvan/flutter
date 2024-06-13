import 'package:flutter/material.dart';
import 'package:sayfagecisuygulamasi/kisiler.dart';
import 'package:sayfagecisuygulamasi/sayfaaB.dart';

// ignore: must_be_immutable
class SayfaA extends StatefulWidget {
  kisiler kisi;
  SayfaA(
      {required this.kisi});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SayfaB()));
                },
                child: Text("Sayfa B ye git")),
            Text("isim: ${widget.kisi.isim}"),
            Text("yas: ${widget.kisi.yas}"),
            Text("bekar mi : ${widget.kisi.bekarMi}"),
            Text("boy: ${widget.kisi.boy}"),
          ],
        ),
      ),
    );
  }
}
