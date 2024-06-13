import 'package:burcrehberi/burc_detay.dart';
import 'package:burcrehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BurcDetay(secilennBurc: listelenenBurc)));
          },
          leading: Image.asset(
            "images/" + listelenenBurc.burcKucukResim,
          ),
          title: Text(listelenenBurc.burcAdi),
          subtitle: Text(listelenenBurc.burcTarihi),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
