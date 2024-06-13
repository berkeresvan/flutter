import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController linkController = TextEditingController();
  TextEditingController resultController = TextEditingController();

  Future<void> processData(String link) async {
    // API endpoint'i
    String apiUrl = 'http://127.0.0.1:5000/process_link';

    // API'ye gönderilecek veri
    Map<String, String> data = {'link': link};

    // API'ye POST isteği yapılıyor
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    // İsteğin başarılı olup olmadığını kontrol ediyoruz
    if (response.statusCode == 200) {
      // JSON verisini çözümleyerek sonucu alıyoruz
      Map<String, dynamic> result = jsonDecode(response.body);
      
      // Sonucu ekrana yazdırıyoruz
      setState(() {
        resultController.text = result['result'];
      });
    } else {
      // Hata durumunda hata mesajını ekrana yazdırıyoruz
      setState(() {
        resultController.text = 'Error: ${response.statusCode}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Data Processing'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: linkController,
              decoration: InputDecoration(
                labelText: 'Enter link',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Butona basıldığında işleme fonksiyonu çağrılıyor
                processData(linkController.text);
              },
              child: Text('Process Link'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: resultController,
              readOnly: true, // Kullanıcı tarafından değiştirilemez
              decoration: InputDecoration(
                labelText: 'Result',
              ),
            ),
          ],
        ),
      ),
    );
  }
}