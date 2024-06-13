import 'package:dinamikortalamahesapla/constants/app_constants.dart';
import 'package:dinamikortalamahesapla/widgets/ortalama_hesapla_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dinamik ORtalama Hesapla",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: sabitler.anaRenk,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: OrtalamaHesaplaPage(),
    );
  }
}
