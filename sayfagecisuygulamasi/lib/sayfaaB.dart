import 'package:flutter/material.dart';
import 'package:sayfagecisuygulamasi/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});



  @override
  State<SayfaB> createState() => _SayfaBState();
}

Future<bool> geriDonusTusu(BuildContext context) async {
  print("geridonus tuşu tıklandı");
  return false;
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa B"),
        leading: IconButton(
          onPressed: () {
            print("app bar geri tulu tıklandı");
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Geldigi sayfaya dön")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text("ana sayfaya dön")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Anasayfa()));
                },
                child: Text("anasayfaya geçiş yap"))
          ],
        ),
      ),
    );
  }
}
