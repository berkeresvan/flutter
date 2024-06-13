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
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Merhaba"),
                    ),
                  );
                },
                child: Text("varsayılan")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Silmek istiyor musunuz"),
                      action: SnackBarAction(
                        label: "EVET",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("silindi"),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
                child: Text("snackbar action")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "İnternet baglantısı yok !",
                        style: TextStyle(color: Colors.indigoAccent),
                      ),
                      backgroundColor: Colors.white,
                      duration: Duration(seconds: 5),
                      action: SnackBarAction(
                        label: "Tekrar dene",
                        textColor: Colors.red,
                        onPressed: () {},
                      ),
                    ),
                  );
                },
                child: Text("özel"))
          ],
        ),
      ),
    );
  }
}
