import 'package:dinamikortalamahesapla/constants/app_constants.dart';
import 'package:dinamikortalamahesapla/helper/data_helper.dart';
import 'package:dinamikortalamahesapla/model/ders.dart';
import 'package:flutter/material.dart';

class DersListesi extends StatelessWidget {
  final Function onDismiss;
  const DersListesi({required this.onDismiss, super.key});

  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenenDersler;
    return tumDersler.length > 0
        ? ListView.builder(
            itemCount: tumDersler.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.startToEnd,
                onDismissed: (a) {
                  onDismiss(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    child: ListTile(
                      title: Text(tumDersler[index].ad),
                      leading: CircleAvatar(
                        backgroundColor: sabitler.anaRenk,
                        child: Text(
                          (tumDersler[index].harfDegeri *
                                  tumDersler[index].krediDegeri)
                              .toStringAsFixed(0),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      subtitle: Text(
                          "${tumDersler[index].krediDegeri} Kredi, Not Değeri ${tumDersler[index].harfDegeri}"),
                    ),
                  ),
                ),
              );
            })
        : Container(
            child: Center(
              child: Text(
                "Lütfen Ders ekleyin",
                style: sabitler.baslikstyle,
              ),
            ),
          );
  }
}
