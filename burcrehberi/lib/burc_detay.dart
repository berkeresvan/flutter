import 'package:burcrehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilennBurc;
  const BurcDetay({required this.secilennBurc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appBarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appbarRengi,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              widget.secilennBurc.burcAdi + " burcu ve özellikleri",
              style: TextStyle(fontSize: 21, fontStyle: FontStyle.italic),
            ),
            //centerTitle: true,
            background: Image.asset(
              "images/" + widget.secilennBurc.burcBuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Text(
              widget.secilennBurc.burcDetayi,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        )
      ],
    ));
  }

  void appBarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/" + widget.secilennBurc.burcBuyukResim));
    appbarRengi = _generator.dominantColor!.color;
    print(appbarRengi);
    setState(() {});
  }
}
