import 'package:dinamikortalamahesapla/constants/app_constants.dart';
import 'package:dinamikortalamahesapla/helper/data_helper.dart';
import 'package:dinamikortalamahesapla/model/ders.dart';
import 'package:dinamikortalamahesapla/widgets/ders_listesi.dart';
import 'package:dinamikortalamahesapla/widgets/ortalama_goster.dart';
import 'package:flutter/material.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();
  double secilenHarfDeger = 4;
  double secilenKredidegeri = 4;
  String GirilenDersAdi = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          sabitler.BaslikText,
          style: sabitler.baslikstyle,
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildForm(),
              ),
              Expanded(
                flex: 1,
                child: OrtalamaGoster(
                  ortalama: DataHelper.OrtalamaHesapla(),
                  dersSayisi: DataHelper.tumEklenenDersler.length,
                ),
              ),
            ],
          ),
          Expanded(child: DersListesi(
            onDismiss: (index) {
              DataHelper.tumEklenenDersler.removeAt(index);

              setState(() {});
            },
          )),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(children: [
        Padding(
          padding: sabitler.yatayPadding8,
          child: _buildTextFormField(),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: sabitler.yatayPadding8,
                child: _buildHarfler(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: sabitler.yatayPadding8,
                child: _buildKrediler(),
              ),
            ),
            IconButton(
              onPressed: _dersEkleveOrtalamaHesapla,
              icon: Icon(Icons.arrow_forward_ios_sharp),
              color: sabitler.anaRenk.shade600,
              iconSize: 30,
            )
          ],
        ),
      ]),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      onSaved: (deger) {
        setState(() {
          GirilenDersAdi = deger!;
        });
      },
      validator: (s) {
        if (s!.length <= 0) {
          return "Ders adını giriniz";
        } else
          return null;
      },
      decoration: InputDecoration(
          hintText: 'matematik',
          border: OutlineInputBorder(
              borderRadius: sabitler.borderRadius, borderSide: BorderSide.none),
          filled: true,
          fillColor: sabitler.anaRenk.shade100.withOpacity(0.2)),
    );
  }

  _buildHarfler() {
    return Container(
      alignment: Alignment.center,
      padding: sabitler.Dropdownpadding,
      decoration: BoxDecoration(
          color: sabitler.anaRenk.shade100.withOpacity(0.3),
          borderRadius: sabitler.borderRadius),
      child: DropdownButton<double>(
        value: secilenHarfDeger,
        elevation: 16,
        iconEnabledColor: sabitler.anaRenk.shade200,
        underline: Container(),
        items: DataHelper.tumDerslerinHarfleri(),
        onChanged: (double? deger) {
          setState(() {
            secilenHarfDeger = deger!;
          });
        },
      ),
    );
  }

  _buildKrediler() {
    return Container(
      alignment: Alignment.center,
      padding: sabitler.Dropdownpadding,
      decoration: BoxDecoration(
          color: sabitler.anaRenk.shade100.withOpacity(0.3),
          borderRadius: sabitler.borderRadius),
      child: DropdownButton<double>(
        value: secilenKredidegeri,
        elevation: 16,
        iconEnabledColor: sabitler.anaRenk.shade200,
        underline: Container(),
        items: DataHelper.tumDerslerinKredileri(),
        onChanged: (double? deger) {
          setState(() {
            secilenKredidegeri = deger!;
          });
        },
      ),
    );
  }

  _dersEkleveOrtalamaHesapla() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var eklenecekDers = Ders(
          ad: GirilenDersAdi,
          harfDegeri: secilenHarfDeger,
          krediDegeri: secilenKredidegeri);
      DataHelper.dersEkle(eklenecekDers);
      print(DataHelper.OrtalamaHesapla());
      setState(() {});
    }
  }
}
