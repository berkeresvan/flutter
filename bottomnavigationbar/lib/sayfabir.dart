import 'package:flutter/material.dart';

class sayfabir extends StatefulWidget {
  const sayfabir({super.key});

  @override
  State<sayfabir> createState() => _sayfabirState();
}

class _sayfabirState extends State<sayfabir> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ExpansionTile(
        title: Text('Başlık'),
        children: <Widget>[
          ListTile(
            title: Text('İçerik 1'),
          ),
          ListTile(
            title: Text('İçerik 2'),
          ),
          // İstediğiniz kadar içerik ekleyebilirsiniz.
        ],
      ),
    ]);
  }
}
