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
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisiligi = ekranbilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranyuksekligi / 70),
                child: SizedBox(
                    width: ekrangenisiligi / 10 * 5,
                    child: Image.asset("images/loginlogo2.png")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "kullanıcı adı",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "şifre",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranyuksekligi / 30),
                child: SizedBox(
                  width: ekrangenisiligi / 1.2,
                  height: ekranyuksekligi / 15,
                  child: ElevatedButton(
                      onPressed: () {
                        print("giriş yapıldı");
                      },
                      child: Text(
                        "GİRİŞ YAP",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: ekranyuksekligi / 50),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
