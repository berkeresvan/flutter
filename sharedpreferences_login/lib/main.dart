import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences_login/Anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  Future<bool> OturumKontrol() async {
    var sp = await SharedPreferences.getInstance();

    String spKullaniciAdi = sp.getString("KullaniciAdi") ?? "Kullanıcı adı yok";
    String spSifre = sp.getString("Sifre") ?? "sifre yok";

    if (spKullaniciAdi == "admin" && spSifre == "123") {
      return true;
    } else {
      return false;
    }
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder<bool>(
        future: OturumKontrol(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            bool? gecisIzni = snapshot.data;
            return gecisIzni! ? const Anasayfa() : LoginEkrani();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class LoginEkrani extends StatefulWidget {
  @override
  State<LoginEkrani> createState() => _LoginEkraniState();
}

class _LoginEkraniState extends State<LoginEkrani> {
  var tfKullaniciadi = TextEditingController();
  var tfSifre = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> girisKontrol() async {
    var ka = tfKullaniciadi.text;
    var s = tfSifre.text;

    if (ka == "admin" && s == "123") {
      var sp = await SharedPreferences.getInstance();
      sp.setString("kullaniciadi", ka);
      sp.setString("sifre", s);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Anasayfa()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("giriş hatalı")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Login Ekranı"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: tfKullaniciadi,
                decoration: InputDecoration(hintText: "Kullanıcı Adı"),
              ),
              TextField(
                obscureText: true,
                controller: tfSifre,
                decoration: InputDecoration(hintText: "Şifre"),
              ),
              ElevatedButton(
                  onPressed: () {
                    girisKontrol();
                  },
                  child: Text("Giriş Yap"))
            ],
          ),
        ),
      ),
    );
  }
}
