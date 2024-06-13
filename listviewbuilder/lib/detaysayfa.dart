// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class detaySayfa extends StatefulWidget {
  //const detaySayfa({super.key});
  String ulkeAdi;
  detaySayfa({required this.ulkeAdi});
  @override
  State<detaySayfa> createState() => _detaySayfaState();
}

class _detaySayfaState extends State<detaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("DETAY"),
        ),
        body: Center(
          child: Text(
            widget.ulkeAdi,
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
