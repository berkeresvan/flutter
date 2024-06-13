import 'package:burcrehberi2/burc_item.dart';
import 'package:burcrehberi2/data/strings.dart';
import 'package:burcrehberi2/model/burc.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class burclistesi extends StatelessWidget {
  late List<Burc> tumburclar;
  burclistesi() {
    tumburclar = verikaynaginiHazirla();
    print(tumburclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('burçlar listesi'),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return burcitem(listelenenburc: tumburclar[index]);
        },
        itemCount: tumburclar.length,
      )),
    );
  }

  List<Burc> verikaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_ADLARI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png',
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk${i + 1}.png');
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
