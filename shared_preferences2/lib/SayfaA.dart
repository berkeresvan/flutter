import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  get gelenArkadasListe => null;

  Future<void> veriOku() async {
    var sp = await SharedPreferences.getInstance();
    String ad = sp.getString("ad") ?? "isim yok";
    int yas = sp.getInt("yas") ?? 99;
    double boy = sp.getDouble("boy") ?? 9.99;
    bool bekarMi = sp.getBool("bekarMi") ?? false;
    var arkadasListe = sp.getStringList("arkadasListe") ?? [];
    print("ad: $ad");
    print("yas: $yas");
    print("boy: $boy");
    print("bekarMi: $bekarMi");
    for (var a in arkadasListe) {
      print("Arkadaş: $a");
    }
  }

  Future<void> veriSil() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("ad");
  }

  Future<void> veriGuncelle() async {
    var sp = await SharedPreferences.getInstance();
    sp.setInt("yas", 100);
  }

  @override
  void initState() {
    veriSil();
    veriGuncelle();
    veriOku();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("sayfa a"),
      ),
      body: Center(),
    );
  }
}
