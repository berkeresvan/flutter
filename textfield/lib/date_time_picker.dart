import 'package:flutter/material.dart';

class TarihSaatOrnek extends StatefulWidget {
  const TarihSaatOrnek({super.key});

  @override
  State<TarihSaatOrnek> createState() => TarihSaatOrnekState();
}

class TarihSaatOrnekState extends State<TarihSaatOrnek> {
  @override
  Widget build(BuildContext context) {
    DateTime suan = DateTime.now();
    DateTime ucAyOncesi = DateTime(2024, suan.month - 3);
    DateTime ucAySonrasi = DateTime(2024, suan.month, suan.day + 40);
    TimeOfDay suankiSaat = TimeOfDay.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarih Ve Saat"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: suan,
                      firstDate: ucAyOncesi,
                      lastDate: ucAySonrasi)
                  .then((secilentarih) {
                print(secilentarih);
              });
            },
            child: Text("Tarih Seç"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          ),
          ElevatedButton(
            onPressed: () {
              showTimePicker(context: context, initialTime: suankiSaat)
                  .then((suankisaatt) {
                print(suankisaatt);
              });
            },
            child: Text("Saat Seç"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),
        ],
      )),
    );
  }
}
