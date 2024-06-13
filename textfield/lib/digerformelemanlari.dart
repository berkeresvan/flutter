import 'package:flutter/material.dart';

class digerformelemanlarikullanimi extends StatefulWidget {
  const digerformelemanlarikullanimi({super.key});

  @override
  State<digerformelemanlarikullanimi> createState() =>
      _digerformelemanlarikullanimiState();
}

class _digerformelemanlarikullanimiState
    extends State<digerformelemanlarikullanimi> {
  bool checkboxstate = false;
  String sehir = " ";
  bool switchstate = false;
  double sliderdeger = 0;
  String secilenRenk = "Kırmızı";
  List<String> sehirler = ["Ankara", "Bursa", "Hatay", "İzmir"];
  String secilenSehir = "Ankara";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: checkboxstate,
              onChanged: (secildi) {
                setState(() {
                  checkboxstate = secildi!;
                });
              },
              activeColor: Colors.red,
              title: Text("CheckBox title"),
              subtitle: Text("checkbox subtitle"),
              secondary: Icon(Icons.add),
              selected: true,
            ),
            RadioListTile<String>(
              value: "istanbul",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  print("secilen deger $deger");
                });
              },
              title: Text("istanbul"),
            ),
            RadioListTile<String>(
              value: "ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  print("secilen deger $deger");
                });
              },
              title: Text("ankara"),
            ),
            RadioListTile<String>(
              value: "izmir",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  print("secilen deger $deger");
                });
              },
              title: Text("izmir"),
            ),
            SwitchListTile(
                value: switchstate,
                onChanged: (switchdeger) {
                  setState(() {
                    switchstate = switchdeger;
                  });
                }),
            Slider(
              value: sliderdeger,
              onChanged: (yenideger) {
                setState(
                  () {
                    sliderdeger = yenideger;
                  },
                );
              },
              max: 100,
              min: 0,
              divisions: 20,
              label: sliderdeger.toString(),
            ),

            /*  DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Text("Kırmızı"),
                  value: "Kırmızı",
                ),
                DropdownMenuItem<String>(
                  child: Text("Mavi"),
                  value: "Mavi",
                ),
                DropdownMenuItem<String>(
                  child: Text("Mor"),
                  value: "Mor",
                ),
              ],
              onChanged: (String secilen) {
                setState(() {
                  secilenRenk = secilen;
                });
              },
              hint: Text("seciniz"),
              value: secilenRenk,
            ), */
            DropdownButton<String>(
              items: sehirler.map((oankisehir) {
                return DropdownMenuItem<String>(
                  child: Text(oankisehir),
                  value: oankisehir,
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  secilenSehir = value!;
                });
              },
              value: secilenSehir,
            )
          ],
        ),
      ),
    );
  }
}
