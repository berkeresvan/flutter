import 'package:flutter/material.dart';

class sayfaiki extends StatefulWidget {
  const sayfaiki({super.key});

  @override
  State<sayfaiki> createState() => _sayfaikiState();
}

class _sayfaikiState extends State<sayfaiki> {
  @override
  Widget build(BuildContext context) {
   return Center(
      child: Text(
        "Sayfa iki",
        style: TextStyle(color: Colors.black54, fontSize: 30),
      ),
    );
  }
}