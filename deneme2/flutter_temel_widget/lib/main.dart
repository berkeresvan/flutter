import 'package:flutter/material.dart';
//import 'package:flutter_temel_widget/dropdown_button.dart';
import 'package:flutter_temel_widget/popupmenu_kullan%C4%B1m%C4%B1.dart';
//import 'package:flutter_temel_widget/image_widgets.dart';
//import 'package:flutter_temel_widget/temel_buton_turleri.dart';
//import 'package:flutter_temel_widget/image_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "my counter app",
        theme: ThemeData(
            primarySwatch: Colors.blue,
            outlinedButtonTheme:
                OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)))),
        home: Scaffold(
            appBar: AppBar(
              actions: [popupmenukullanimi()],
              backgroundColor: Colors.teal,
              title: const Text(
                "BERKEEs",
              ),
            ),
            body: const popupmenukullanimi()));
  }
}
