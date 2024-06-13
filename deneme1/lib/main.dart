import 'package:flutter/material.dart';

void main() {
  runApp(const BenimApp());
}

class BenimApp extends StatelessWidget {
  const BenimApp({super.key});
  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      width: 75,
      height: 75,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: margin),
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.orange.shade100),
        containerOlustur("A", Colors.orange.shade200),
        containerOlustur("R", Colors.orange.shade300),
        containerOlustur("T", Colors.orange.shade400),
      ],
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: containerOlustur('E', Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur('S', Colors.orange.shade500, margin: 15),
        ),
        Expanded(
          child: containerOlustur('L', Colors.orange.shade600, margin: 15),
        ),
        Expanded(
          child: containerOlustur('E', Colors.orange.shade700, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade800, margin: 15),
        ),
        Expanded(
          child: containerOlustur('I', Colors.orange.shade900, margin: 15),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 57, 61, 64),
        appBar: AppBar(
          title: const Text(
            'BERKE ',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 107, 92, 92),
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dersleriColumnOlustur())
            ],
          ),
        ),
      ),
    );
  }

  Widget containerrow() {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 75,
          height: 75,
          color: Colors.white,
        ),
        Container(
          width: 75,
          height: 75,
          color: Colors.white,
        ),
        Container(
          width: 75,
          height: 75,
          color: Colors.white,
        ),
        Container(
          width: 75,
          height: 75,
          color: Colors.white,
        ),
      ]),
    );
  }

  Widget containeryapisi1() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.teal,
            shape: BoxShape.rectangle,
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(33),
            boxShadow: [
              BoxShadow(
                  color: Colors.teal, offset: Offset(0, 0), blurRadius: 20),
            ]),
        child: const FlutterLogo(
          size: 155,
          style: FlutterLogoStyle.horizontal,
          textColor: Colors.white,
        ),
      ),
    );
  }

  Container containerIcindeRow() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: sorunluContainer,
      ),
    );
  }

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.blue,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.purple,
        ),
      ),
      Flexible(
        child: Container(
          width: 100,
          height: 300,
          color: Colors.red,
        ),
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 25,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 575,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
    ];
  }

  Container rowColumDersleri() {
    return Container(
      color: Colors.red.shade300,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'E',
              ),
              Text('M'),
              Text('R'),
              Text('E'),
            ],
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.green,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.red,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.blue,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          'emre',
          style: TextStyle(fontSize: 128),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            // // image: DecorationImage(
            // //     image: NetworkImage(_img2),
            // //     fit: BoxFit.scaleDown,
            // //     repeat: ImageRepeat.repeat),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(0, 20), blurRadius: 20),
              BoxShadow(
                  color: Colors.yellow, offset: Offset(0, -90), blurRadius: 10),
            ]),
      ),
    );
  }
}
