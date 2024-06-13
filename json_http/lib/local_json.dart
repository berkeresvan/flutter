import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_http/model/araba_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({super.key});

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Local Json Islemleri"),
        ),
        body: FutureBuilder<List<Araba>>(
            future: arabalarJsonOku(),
            builder: (context, snaapshot) {
              if (snaapshot.hasData) {
                List<Araba> arabaListesi = snaapshot.data!;

                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(arabaListesi[index].arabaAdi),
                      subtitle: Text(arabaListesi[index].ulke),
                      leading: CircleAvatar(
                        child:
                            Text(arabaListesi[index].model[0].fiyat.toString()),
                      ),
                    );
                  },
                  itemCount: arabaListesi.length,
                );
              } else if (snaapshot.hasData) {
                return Center(
                  child: Text(snaapshot.error.toString()),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }

  Future<List<Araba>> arabalarJsonOku() async {
    try {
      String okunanString = await DefaultAssetBundle.of(context)
          .loadString("assets/data/arabalar.json");
      var jsonObject = jsonDecode(okunanString);

      /* debugPrint(okunanString);
    debugPrint("*********");
    List arabalarListesi = jsonObject;
    debugPrint(arabalarListesi[0]["model"][0]["fiyat"].toString()); */

      List<Araba> tumArabalar = (jsonObject as List)
          .map((arabaMap) => Araba.fromMap(arabaMap))
          .toList();
      debugPrint(tumArabalar[0].model[0].modeladi);
      debugPrint(tumArabalar.length.toString());
      return tumArabalar;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e.toString());
    }
    
  }
}
