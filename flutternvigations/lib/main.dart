import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternvigations/green_page.dart';
import 'package:flutternvigations/orange_page.dart';
import 'package:flutternvigations/purple_page.dart';
import 'package:flutternvigations/red_page.dart';
import 'package:flutternvigations/yellow_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //  home: Anasayfa(),
       routes: {
        'redpage': (context) => redpapge(),
        'greenpage': (context) => greenpage(),
        'orangepage': (context) => orangepage(),
        'purplepage': (context) => purplepage(),
        'yellowpage': (context) => yellowpage(),
        '/': (context) => Anasayfa(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("error"),
                ),
              )), 
              // onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(
              onPressed: () async {
                int? _gelensayi = await Navigator.push<int>(context,
                    CupertinoPageRoute(builder: (redContext) => redpapge()));
                print("gelen sayı $_gelensayi");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "kırmızı sayfaya gir ios",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => redpapge()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "kırmızı sayfaya gir android",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "maybepop",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  print("evet pop olabilir");
                } else
                  print("hayır olamaz");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "canpop",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => greenpage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "push replacament ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.of(context).pushNamed(routeName);
                Navigator.pushNamed(context, 'redpage');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "pushnamed kullanımı",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ));
  }
}
