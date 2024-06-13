import 'package:flutter/material.dart';

class orangepage extends StatelessWidget {
  const orangepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("orange page"), backgroundColor: Colors.orange),
      body: Center(
        child: Text(
          "orange page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
