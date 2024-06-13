import 'package:flutter/material.dart';

class ImageOrnekleri extends StatefulWidget {
  const ImageOrnekleri({super.key});

  @override
  State<ImageOrnekleri> createState() => _ImageOrnekleriState();
}

class _ImageOrnekleriState extends State<ImageOrnekleri> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Column(
            children: [resimcontainer(), resimcontainer()],
          ),

          /* FadeInImage.assetNetwork(
              placeholder: 'assets/images/car.jpg',
              image:
                  'assets/images/car.jpg') */ //resim yüklenene kadar başka bir resim gösteriyor image kısmı network üzerinden olması gerek
        ],
      ),
    );
  }

  Container resimcontainer() {
    return Container(
      color: Colors.red.shade100,
      width: 100,
      height: 100,
      child: Image.asset(
        'assets/images/car.jpg',
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Expanded resim() {
    return Expanded(
      child: Image.asset(
        'assets/images/car.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
