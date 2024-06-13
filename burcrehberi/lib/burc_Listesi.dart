import 'package:burcrehberi/burc_item.dart';
import 'package:burcrehberi/data/strings.dart';
import 'package:burcrehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumburclar;
  BurcListesi() {
    tumburclar = verikaynaginihazirla();
    print(tumburclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(listelenenBurc: tumburclar[index]);
        },
        itemCount: tumburclar.length,
      )),
    );
  }

  List<Burc> verikaynaginihazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burctarihi = Strings.BURC_TARIHLERI[i];
      var burcdetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burckucukresim =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      var burcbuyukresim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      Burc eklenecekBurc =
          Burc(burcAdi, burctarihi, burcdetay, burckucukresim, burcbuyukresim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
