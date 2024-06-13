import 'package:flutter/material.dart';

class gridviewkullan extends StatelessWidget {
  const gridviewkullan({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GridView.builder(
          itemCount: 100,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return merhabafluttercontainer();
          }),
      onTap: () => debugPrint("merhaba flutter ontap"),
      onDoubleTap: () => debugPrint("merhaba flutter ondoubletap"),
      onLongPress: () => debugPrint("merhaba flutter onlongtap"),
    );
  }

  GridView gridviewextentkullan() {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      reverse: false, // sonraki elemanı başa yazıyor mesaj gibi
      primary: true, // kaydırırken sonra geldiginde işaret çıkmasın diye
      // scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: <Widget>[
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
      ],
    );
  }

  GridView gridviewcountkullan() {
    return GridView.count(
      crossAxisCount: 3,
      reverse: true, // sonraki elemanı başa yazıyor mesaj gibi
      primary: true, // kaydırırken sonra geldiginde işaret çıkmasın diye
      // scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: <Widget>[
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
        merhabafluttercontainer(),
      ],
    );
  }

  Container merhabafluttercontainer() {
    return Container(
      alignment: Alignment.bottomCenter,
      // color: Colors.teal.shade300,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.blue, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.red, offset: Offset(10, 10), blurRadius: 15),
          ],
          image: DecorationImage(
              image: AssetImage("assets/araba.jpg"),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter),
          color: Colors.blue,
          gradient: LinearGradient(
              colors: [Colors.yellow, Colors.red],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),

      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Text(
          "merhaba flutter",
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
