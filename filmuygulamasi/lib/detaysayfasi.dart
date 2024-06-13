import 'package:filmuygulamasi/filmler.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class detaySayfa extends StatefulWidget {
  Filmler film;
  detaySayfa({required this.film});
  @override
  State<detaySayfa> createState() => _detaySayfaState();
}

class _detaySayfaState extends State<detaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(widget.film.film_adi),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("resimler/${widget.film.film_resim_adi}"),
              Text(
                "${widget.film.film_fiyat} ₺",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("KİRALA")))
            ],
          ),
        ));
  }
}
