import 'package:dinamikortalamahesapla/constants/app_constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrtalamaGoster extends StatelessWidget {
  double ortalama = 0;
  int dersSayisi = 0;

  OrtalamaGoster({super.key, required this.dersSayisi, required this.ortalama});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? '$dersSayisi Ders Girildi' : 'Ders Seçiniz',
          style: sabitler.OrtalamaGosterBodyStyle,
        ),
        Text(ortalama >= 0 ? '${ortalama.toStringAsFixed(2)}' : '0.0',
            style: sabitler.OrtalamaStyle),
        Text(
          "ortalama",
          style: sabitler.OrtalamaGosterBodyStyle,
        ),
      ],
    );
  }
}
