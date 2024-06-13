import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tfTarih = TextEditingController();
  var tfSaat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tfSaat,
              decoration: InputDecoration(
                hintText: "Saat giriniz",
              ),
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                ).then((AlinanSaat) {
                  setState(() {
                    tfSaat.text = "${AlinanSaat!.hour}:${AlinanSaat.minute}";
                  });
                });
              },
            ),
            TextField(
              controller: tfTarih,
              decoration: InputDecoration(
                hintText: "tarih giriniz",
              ),
              onTap: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100))
                    .then((Alinantarih) {
                  setState(() {
                    tfTarih.text =
                        "${Alinantarih!.day}/${Alinantarih.month}/${Alinantarih.year}";
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
