import 'package:flutter/material.dart';

class dropdownbuttonkullanimi extends StatefulWidget {
  const dropdownbuttonkullanimi({super.key});

  @override
  State<dropdownbuttonkullanimi> createState() => _dropdownbuttonState();
}

class _dropdownbuttonState extends State<dropdownbuttonkullanimi> {
  String? _secilensehir = null;

  List<String> _tumsehirler = ['ankara', 'istanbul', 'izmir', 'gaziantep'];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButton<String>(
      hint: Text("şehir seçiniz"),
      icon: Icon(Icons.arrow_downward),
      underline: Container(
        height: 4,
        color: Colors.red,
      ),
      /* items: [
        DropdownMenuItem(
          child: Text('istanbul şehri'),
          value: 'istanbul',
        ),
        DropdownMenuItem(
          child: Text('ankara şehri'),
          value: 'ankara',
        ),
        DropdownMenuItem(
          child: Text('izmir şehri'),
          value: 'izmir',
        ),
      ],*/
      items: _tumsehirler
          .map(
            (String oankisehir) => DropdownMenuItem(
              child: Text(oankisehir),
              value: oankisehir,
            ),
          )
          .toList(),
      value: _secilensehir,
      onChanged: (String? value) {
        setState(() {
          _secilensehir = value;
        });
      },
    ));
  }
}
