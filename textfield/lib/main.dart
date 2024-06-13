import 'package:flutter/material.dart';
import 'package:textfield/global_key_kullanimi.dart';

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
      home: globalkeykullanimi(),
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
  late TextEditingController _emailcontroller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _emailcontroller = TextEditingController(text: "berke@berke.com");
    _focusNode = FocusNode();
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
          children: <Widget>[
            TextField(
              focusNode: _focusNode,
              controller: _emailcontroller,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.go,
              autofocus: true,
              maxLines: 2,
              maxLength: 20,
              onChanged: (String deger) {
                if ((deger.length > 3)) {
                  setState(() {
                    _emailcontroller.value = TextEditingValue(
                        text: deger,
                        selection:
                            TextSelection.collapsed(offset: deger.length));
                  });
                }
              },
              onSubmitted: (String deger) {
                print(deger + "submit");
              },
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                labelText: "labeltext",
                hintText: "giriniz",
                icon: Icon(Icons.add),
                suffixIcon: Icon(Icons.access_alarms_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                //fillColor: Colors.pink
              ),
            ),
            Text(_emailcontroller.text),
            TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.go,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _emailcontroller.text = "berrke";
                  });
                },
                child: Text("bas"))
          ],
        ),
      ),
    );
  }
}
