import 'package:flutter/material.dart';

class cardvelisttilekullanimi extends StatelessWidget {
  const cardvelisttilekullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('card ve list tile'),
        ),
        body: Center(
          child: ListView(
            reverse: true,
            children: [
              Column(
                children: [
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                  TeklisteElemani(),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('buton'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              )
            ],
          ),
        ));
  }

  SingleChildScrollView singlechildkullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
          TeklisteElemani(),
        ],
      ),
    );
  }

  Column TeklisteElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.red,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('başlık kısmı'),
            subtitle: Text('altbaşlık kısmı'),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 5,
          height: 10,
          indent: 20,
          endIndent: 20,
        )
      ],
    );
  }
}
