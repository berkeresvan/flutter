import 'package:flutter/material.dart';
import 'package:yemekuygulamasi/yemekler.dart';

// ignore: must_be_immutable
class DetaySayfa extends StatefulWidget {
  Yemekler yemek;
  DetaySayfa({required this.yemek});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(widget.yemek.yemek_adi),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("resimler/${widget.yemek.yemek_resim_adi}"),
              Text(
                "${widget.yemek.yemek_fiyat} ₺",
                style: TextStyle(fontSize: 48, color: Colors.blue),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      print("${widget.yemek.yemek_adi} siparişi verildi");
                    },
                    child: Text("Sipariş ver")),
              )
            ],
          ),
        ));
  }
}
