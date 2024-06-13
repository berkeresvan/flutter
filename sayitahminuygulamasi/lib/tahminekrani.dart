import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayitahminuygulamasi/sonucekrani.dart';

class TahminEkrani extends StatefulWidget {
  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  var tfTahmin = TextEditingController();
  int RasgeleSayi = 0;
  int KalanHak = 5;
  String yonlendirme = "";
  @override
  void initState() {
    super.initState();
    RasgeleSayi = Random().nextInt(101);
    print("rasgele sayı : $RasgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Kalan Hak : $KalanHak",
              style: TextStyle(color: Colors.pink, fontSize: 30),
            ),
            Text(
              "Yardım : $yonlendirme",
              style: TextStyle(color: Colors.black54, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Tahmin",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      KalanHak = KalanHak - 1;
                    });
                    int tahmin = int.parse(tfTahmin.text);
                    if (tahmin == RasgeleSayi) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SonucEkrani(sonuc: true,)));
                      return;
                    }
                    if (tahmin > RasgeleSayi) {
                      setState(() {
                        yonlendirme = "Sayıyı Küçült";
                      });
                    }
                    if (tahmin < RasgeleSayi) {
                      setState(() {
                        yonlendirme = "Sayıyı Büyült";
                      });
                    }
                    if (KalanHak == 0) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SonucEkrani(sonuc: false,)));
                      return;
                    }
                    tfTahmin.text = "";
                  },
                  child: Text(
                    "TAHMİN ET",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
