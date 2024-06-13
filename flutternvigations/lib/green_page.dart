import 'package:flutter/material.dart';

class greenpage extends StatelessWidget {
  const greenpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("green page"), backgroundColor: Colors.green),
      body: Center(
        child: Text(
          "green page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
