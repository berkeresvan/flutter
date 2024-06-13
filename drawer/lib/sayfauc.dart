import 'package:flutter/material.dart';

class sayfauc extends StatefulWidget {
  const sayfauc({super.key});

  @override
  State<sayfauc> createState() => _sayfaucState();
}

class _sayfaucState extends State<sayfauc> {
  @override
  Widget build(BuildContext context) {
     return Center(
      child: Text("sayfa uc",style: TextStyle(color: Colors.black54,fontSize: 30),),
    );
  }
}