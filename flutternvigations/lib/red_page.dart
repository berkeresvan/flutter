import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class redpapge extends StatelessWidget {
  redpapge({super.key});
  int _rasgelesyi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("red page"),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "red page",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                _rasgelesyi = Random().nextInt(100);
                print("üretilen sayı $_rasgelesyi");
                Navigator.of(context).pop(_rasgelesyi);
              },
              child: Text("Geri Dön"),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  print("evet pop olabilir");
                } else
                  print("hayır olamaz");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "canpop",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'greenpage');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "green page",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
