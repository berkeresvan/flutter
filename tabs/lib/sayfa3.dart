import 'package:flutter/material.dart';

class Sayfa3 extends StatefulWidget {
  const Sayfa3({super.key});

  @override
  State<Sayfa3> createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sayfa 3",
        style: TextStyle(color: Colors.black54, fontSize: 30),
      ),
    );
  }
}
