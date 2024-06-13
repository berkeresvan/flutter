import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFromFieldKullanimi extends StatefulWidget {
  const TextFromFieldKullanimi({super.key});

  @override
  State<TextFromFieldKullanimi> createState() => _TextFromFieldKullanimiState();
}

class _TextFromFieldKullanimiState extends State<TextFromFieldKullanimi> {
  String _email = "", _password = "", _username = "";
  final _FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("textform field kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _FormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                //initialValue: "berkeresvan",
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.redAccent),
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
                onSaved: (deger) {
                  _username = deger!;
                },
                validator: (deger) {
                  if (deger!.length < 4) {
                    return 'username en az 4 karaakter olmalı';
                  } else
                    return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                //  initialValue: "berkeresvan@gmail.com",
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.redAccent),
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
                onSaved: (deger) {
                  _email = deger!;
                },
                validator: (deger) {
                  if (!EmailValidator.validate(deger!)) {
                    return 'geçerli bir mail giriniz';
                  } else
                    return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                //   initialValue: "Password",
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.redAccent),
                  labelText: "password",
                  border: OutlineInputBorder(),
                ),
                onSaved: (deger) {
                  _password = deger!;
                },
                validator: (deger) {
                  if (deger!.length < 6) {
                    return 'şifre en az 6 karaakter olmalı';
                  } else
                    return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    bool _validate = _FormKey.currentState!.validate();
                    if (_validate) {
                      _FormKey.currentState!.save();
                      String result =
                          "username:$_username\n email:$_email \n Sifre: $_password";
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(result),
                        ),
                      );
                      _FormKey.currentState!.reset();
                    }
                  },
                  child: Text("ONAYLA"))
            ],
          ),
        ),
      ),
    );
  }
}
