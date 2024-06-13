import 'package:burcrehberi2/model/burc.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class burcitem extends StatelessWidget {
  final Burc listelenenburc;
  const burcitem({required this.listelenenburc, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          "images/"+listelenenburc.burckucukresim,
          width: 64,
          height: 64,
        ),
        title: Text(listelenenburc.burcadi),
        subtitle: Text(listelenenburc.burctarihi),
      ),
    );
  }
}
