// ignore_for_file: public_member_api_docs, sort_constructors_first
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
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
    // ignore: unused_local_variable
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  width: ekrangenisligi,
                  child: Image.asset("resimler/yemek.jpg")),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: ekrangenisligi / 8,
                      child: ElevatedButton(
                        onPressed: () {
                          print("begenildi");
                        },
                        child: yazi("begen", ekrangenisligi / 25),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: ekrangenisligi / 8,
                      child: ElevatedButton(
                        onPressed: () {
                          print("begenildi");
                        },
                        child: yazi("yorum yap", ekrangenisligi / 25),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(ekrangenisligi / 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "hamburger",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: ekrangenisligi / 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        yazi("Izgara üzerinde pişirilmeye uygun",
                            ekrangenisligi / 25),
                        Spacer(),
                        yazi("8 Ağustos", ekrangenisligi / 25)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranyuksekligi / 100),
                child: yazi(
                    "Hamburger, genellikle köftesi, sebzeleri ve sosları içeren popüler bir fast-food yemeğidir. Köftesi genellikle kıymadan yapılır ve baharatlarla zenginleştirilir. İyi bir hamburger yapmak için taze ve kaliteli malzemeler kullanmak önemlidir. Köftenin hazırlanması, doğru oranlarda baharat eklemeyi gerektirir.",
                    ekrangenisligi / 25),
              )
            ],
          ),
        ));
  }
}

// ignore: must_be_immutable, camel_case_types
class yazi extends StatelessWidget {
  String icerik;
  double yaziBoyut;
  yazi(this.icerik, this.yaziBoyut, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(fontSize: yaziBoyut),
    );
  }
}
