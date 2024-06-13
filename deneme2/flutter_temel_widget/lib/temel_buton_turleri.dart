import 'package:flutter/material.dart';

// ignore: camel_case_types
class temelbuton extends StatelessWidget {
  const temelbuton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint('uzun basıldı');
          },
          child: const Text('text buton'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('text buton iconlu'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.teal),
              foregroundColor: MaterialStateProperty.all(Colors.blue.shade100),
              overlayColor:
                  MaterialStateProperty.all(Colors.red.withOpacity(0.5))),
          child: const Text('elevated buton'),
        ),
        ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            icon: const Icon(Icons.abc_sharp),
            label: const Text("elevated buton iconlu")),
        OutlinedButton(onPressed: () {}, child: Text('outline buton')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.purple, width: 2)),
            label: Text('outline buton iconlu'))
      ],
    );
  }
}
