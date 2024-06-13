import 'package:flutter/material.dart';

class sayacWidget extends StatefulWidget {
  const sayacWidget({super.key});

  @override
  State<sayacWidget> createState() => sayacWidgetState();
}

class sayacWidgetState extends State<sayacWidget> {
  int _sayac = 0;
  void arttir() {
    setState(() {
      _sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _sayac.toString(),
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
