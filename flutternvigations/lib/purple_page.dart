import 'package:flutter/material.dart';

class purplepage extends StatelessWidget {
  const purplepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("purple page"), backgroundColor: Colors.purple),
      body: Center(
        child: Text(
          "purple page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
