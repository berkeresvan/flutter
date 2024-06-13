import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("BERKE"),
      ),
      body: Container(
        height: 800,
        color: Colors.yellow,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start, // aynı ekseni
          crossAxisAlignment: CrossAxisAlignment.start, // karşı ekseni
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            containerbox(),
            containerbox(),
            containerbox(),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.teal, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
      ]),
      backgroundColor: Colors.purple,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(
        backgroundColor: Colors.teal,
      ),
    );
  }
}

// ignore: camel_case_types
class containerbox extends StatelessWidget {
  const containerbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(colors: [Colors.red, Colors.blue]),
          color: Colors.blue,
          border: Border.all(width: 5)),
      margin: const EdgeInsets.all(2),
    );
  }
}
