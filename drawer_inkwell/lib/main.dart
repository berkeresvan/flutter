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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Berke resvan"),
              accountEmail: Text("berkeresvan@gmail.com"),
              currentAccountPicture: Image.network(
                  "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text("ak"),
                ),
                Image.network(
                    "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
                Image.network(
                    "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Anasafa"),
                    trailing: Icon(Icons.chevron_left),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Arama"),
                    trailing: Icon(Icons.chevron_left),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text("Bum"),
                    trailing: Icon(Icons.chevron_left),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.red,
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Anasafa"),
                      trailing: Icon(Icons.chevron_left),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
