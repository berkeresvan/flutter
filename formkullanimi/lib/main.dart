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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: tfKullaniciAdi,
                      decoration: InputDecoration(hintText: "kullanıcı Adı"),
                      validator: (tfgirdisi) {
                        if (tfgirdisi!.isEmpty) {
                          return "Kullanıcı Adı Giriniz";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: tfSifre,
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Şifre"),
                      validator: (tfgirdisi) {
                        if (tfgirdisi!.isEmpty) {
                          return "Şifre Giriniz";
                        }
                        if (tfgirdisi.length < 6) {
                          return "6 karakterden uzun girin";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          bool kontrolSonucu = formKey.currentState!.validate();
                          if (kontrolSonucu) {
                            String ka = tfKullaniciAdi.text;
                            String si = tfSifre.text;
                            print("Kullanıcı Adı : $ka - Şifre : $si");
                          }
                        },
                        child: Text("GİRİŞ"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
