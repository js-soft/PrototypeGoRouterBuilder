import 'package:flutter/material.dart';
import 'package:simple_app_playground/data/cats.dart';

class HouseCatView extends StatefulWidget {
  final HouseCat houseCat;
  const HouseCatView({required this.houseCat, super.key});

  @override
  HouseCatViewState createState() => HouseCatViewState();
}

class HouseCatViewState extends State<HouseCatView> {
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
        title: const Text('House Cat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${widget.houseCat.name}',
                style: const TextStyle(fontSize: 24)),
            Text('Age: ${widget.houseCat.age}',
                style: const TextStyle(fontSize: 24)),
            Text(
              'Breed: ${widget.houseCat.breed}',
              style: const TextStyle(fontSize: 24),
            ),
            Text('Owner: ${widget.houseCat.ownerName}',
                style: const TextStyle(fontSize: 24)),
            Text('Owner address: ${widget.houseCat.ownerAddress}',
                style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
