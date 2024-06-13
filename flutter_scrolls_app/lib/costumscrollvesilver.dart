import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class collapsabletoolbarornek extends StatelessWidget {
  const collapsabletoolbarornek({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 200,
          floating: false,
          pinned: false,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "sliver app bar",
              ),
              centerTitle: false,
              background: Image.asset(
                "assets/aa.jpg",
                fit: BoxFit.cover,
              )),
        ),
        //  SliverList(
        //   delegate: SliverChildListDelegate(sabitlisteelemanlari),
        //  ),
        SliverList(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
        ),
        SliverGrid(
            delegate: SliverChildListDelegate(sabitlisteelemanlari),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
      ],
    );
  }

  List<Widget> get sabitlisteelemanlari {
    return [
      Container(
        height: 150,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "MERHABA",
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "MERHABA",
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          "MERHABA",
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.grey,
        alignment: Alignment.center,
        child: Text(
          "MERHABA",
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "MERHABA",
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          "MERHABA",
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.lime,
        alignment: Alignment.center,
        child: Text(
          "MERHABA",
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 150,
      color: rasgelerenkuret(),
      alignment: Alignment.center,
      child: Text(
        "MERHABA",
        style: TextStyle(fontSize: 50),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color rasgelerenkuret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
