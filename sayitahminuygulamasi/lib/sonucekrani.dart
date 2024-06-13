import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SonucEkrani extends StatefulWidget {
  bool sonuc;
  SonucEkrani({required this.sonuc});
  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sonuc Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.sonuc
                ? Image.asset("resimler/mutlu_resim.png")
                : Image.asset("resimler/uzgun_resim.png"),
            widget.sonuc
                ? Text(
                    "KAZANDINIZ",
                    style: TextStyle(color: Colors.black54, fontSize: 36),
                  )
                : Text(
                    "KAYBETTİNİZ",
                    style: TextStyle(color: Colors.black54, fontSize: 36),
                  ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "TEKRAR DENE",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
