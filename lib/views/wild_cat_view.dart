import 'package:flutter/material.dart';

import '../data/cats.dart';

class WildCatView extends StatefulWidget {
  final WildCat wildCat;

  const WildCatView({required this.wildCat, super.key});

  @override
  WildCatViewState createState() => WildCatViewState();
}

class WildCatViewState extends State<WildCatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('Wild Cat'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Name: ${widget.wildCat.name}',
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                'Species: ${widget.wildCat.breed}',
                style: const TextStyle(fontSize: 24),
              ),
              Text('Age: ${widget.wildCat.age}',
                  style: const TextStyle(fontSize: 24)),
              Text(
                'Habitat: ${widget.wildCat.habitat}',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ));
  }
}
