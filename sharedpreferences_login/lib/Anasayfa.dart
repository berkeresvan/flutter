import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences_login/main.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  String? spKullaniciAdi;
  String? spSifre;
  Future<void> OturumBilgisiOku() async {
    var sp = await SharedPreferences.getInstance();
    setState(() {
      spKullaniciAdi = sp.getString("KullaniciAdi") ?? "Kullanıcı adı yok";
      spSifre = sp.getString("Sifre") ?? "sifre yok";
    });
  }

  Future<void> CikisYap() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("KullaniciAdi");
    sp.remove("Sifre");
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginEkrani()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    OturumBilgisiOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aanasayfa"),
        actions: [
          IconButton(
            onPressed: () {
              CikisYap();
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Kullanıcı Adı : $spKullaniciAdi ",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                "Şifre : $spSifre",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
