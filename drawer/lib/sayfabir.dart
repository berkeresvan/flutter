import 'package:flutter/material.dart';

class sayfabir extends StatefulWidget {
  const sayfabir({super.key});

  @override
  State<sayfabir> createState() => _sayfabirState();
}

class _sayfabirState extends State<sayfabir> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "sayfa bir",
        style: TextStyle(color: Colors.black54, fontSize: 30),
      ),
    );
  }
}
