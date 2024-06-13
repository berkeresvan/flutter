import 'package:flutter/material.dart';

class listviewlayoutproblem extends StatelessWidget {
  const listviewlayoutproblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('listview layout problems'),
      ),
      body: Container(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  height: 200,
                  color: Colors.orange.shade800,
                ),
              ],
            ),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.yellow)),
      ),
    );
  }
}
