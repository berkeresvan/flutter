import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

// ignore: must_be_immutable
class listviewkullanimi extends StatelessWidget {
  listviewkullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
    100,
    (index) => Ogrenci(
        index + 1, 'Ogrenci adi ${index + 1}', 'ogrenci soyadi ${index + 1} '),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Öğrenci Listesi'),
          backgroundColor: Colors.amber,
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            var oankiogrenci = tumOgrenciler[index];
            return Card(
              color: index % 2 == 0 ? Colors.teal : Colors.teal.shade700,
              child: ListTile(
                onTap: () {
                  print("eleman tıklandı index $index");
                  EasyLoading.showToast('eleman tıklandı',
                      duration: Duration(seconds: 3),
                      dismissOnTap: true,
                      toastPosition: EasyLoadingToastPosition.bottom);
                },
                onLongPress: () {
                  _alertDialogIslemleri(context);
                },
                title: Text(oankiogrenci.adi),
                subtitle: Text(oankiogrenci.soyadi),
                leading: CircleAvatar(
                  child: Text(oankiogrenci.id.toString()),
                ),
              ),
            );
          },
          itemCount: tumOgrenciler.length,
        ));
  }

  ListView klasikListViewmetodu() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.adi),
                subtitle: Text(ogr.soyadi),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext) {
    showDialog(
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text('alert diaolg'),
            content: SingleChildScrollView(
              child: Text('berke resvan' * 200),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('KAPAT'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('KAPAT'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('KAPAT'),
                  ),
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String adi;
  final String soyadi;

  Ogrenci(this.id, this.adi, this.soyadi);
}
