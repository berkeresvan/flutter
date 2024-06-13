import 'package:flutter/material.dart';

class stepperkullanimi extends StatefulWidget {
  const stepperkullanimi({super.key});

  @override
  State<stepperkullanimi> createState() => stepperkullanimiState();
}

class stepperkullanimiState extends State<stepperkullanimi> {
  int _aktifStep = 0;
  String isim = "";
  String mail = "";
  String sifre = "";
  List<Step> tumstepler = [];
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumstepler = _tumstepler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Örnek"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: _tumstepler(),
          currentStep: _aktifStep,
          onStepTapped: (tiklanilanStep) {
            setState(() {
              _aktifStep = tiklanilanStep;
            });
          },
          onStepContinue: () {
            setState(() {
              if (_aktifStep < tumstepler.length - 1) {
                _aktifStep++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              }
            });
          },
        ),
      ),
    );
  }
}

List<Step> _tumstepler() {
  List<Step> stepler = [
    Step(
        title: Text("Kullanıcı Adı Girinizzz"),
        subtitle: Text("Subtitle"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: "UserNameLabel",
              hintText: "UsernameHint",
              border: OutlineInputBorder()),
          validator: (girilendeger) {
            if (girilendeger!.length < 6) {
              return "en az 6 karakter giriniz";
            }
            return null;
          },
          onSaved: (girilendeger){
            
          },
        )),
    Step(
        title: Text("Mail Girinizzz"),
        subtitle: Text("Subtitle"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: "UserMailLabel",
              hintText: "UserMailHint",
              border: OutlineInputBorder()),
          validator: (girilendeger) {
            if (girilendeger!.length < 6 && girilendeger.contains("@")) {
              return "en az 6 karakter giriniz";
            }
            return null;
          },
        )),
    Step(
        title: Text("Şifre Girinizzz"),
        subtitle: Text("Subtitle"),
        state: StepState.indexed,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: "ŞifreLabel",
              hintText: "ŞifreHint",
              border: OutlineInputBorder()),
          validator: (girilendeger) {
            if (girilendeger!.length < 6) {
              return "en az 6 karakter giriniz";
            }
            return null;
          },
        )),
  ];
  return stepler;
}
