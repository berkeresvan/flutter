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
      debugShowCheckedModeBanner: false,
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
  Future<int> faktoriyelHesapla(int sayi) async {
    int sonuc = 1;

    for (var i = 1; i <= sayi; i++) {
      sonuc = sonuc * i;
    }
    return sonuc;
  }

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
            FutureBuilder<int>(
              future: faktoriyelHesapla(5),
              builder: (context, AsyncSnapshot) {
                if (AsyncSnapshot.hasError) {
                  print("hata sonucu : ${AsyncSnapshot.error}");
                }
                if (AsyncSnapshot.hasData) {
                  return Text("sonuc : ${AsyncSnapshot.data}");
                } else {
                  return Text("Gösterilecek Veri Yok");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
