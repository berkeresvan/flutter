import 'package:flutter/material.dart';

class popupmenukullanimi extends StatefulWidget {
  const popupmenukullanimi({super.key});

  @override
  State<popupmenukullanimi> createState() => _popupmenukullanimiState();
}

class _popupmenukullanimiState extends State<popupmenukullanimi> {
  // ignore: unused_field
  String _secilensehir = 'ankara';
  List<String> renkler = ['mavi', 'kırmızı', 'yeşil', 'mor'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('seçilen sehir $sehir');
          setState(() {
            _secilensehir = sehir;
          });
        },
        itemBuilder: (BuildContext context) {
          // return <PopupMenuEntry<String>>[
          //   PopupMenuItem(
          //     child: Text('ankara'),
          //     value: 'ankara',
          //   ),
          //   PopupMenuItem(
          //     child: Text('istanbul'),
          //     value: 'istanbul',
          //   ),
          //   PopupMenuItem(
          //     child: Text('gaziantep'),
          //     value: 'gaziantep',
          //   ),
          // ];
          return renkler
              .map(
                (String ankirenkler) => PopupMenuItem(
                  value: ankirenkler,
                  child: Text(ankirenkler),
                ),
              )
              .toList();
        },
      ),
    );
  }
}
