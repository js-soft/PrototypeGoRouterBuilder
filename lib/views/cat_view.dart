import 'package:flutter/material.dart';
import 'package:simple_app_playground/routing/routes.dart';

import '../data/cats.dart';

class CatView extends StatefulWidget {
  final Cat cat;
  const CatView({super.key, required this.cat});

  @override
  CatViewState createState() => CatViewState();
}

class CatViewState extends State<CatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              const BarRouteData().go(context);
            },
          ),
          title: const Text('Cat Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Name: ${widget.cat.name}',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'Breed: ${widget.cat.breed}',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'Age: ${widget.cat.age}',
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                WildCatViewRouteData(
                  habitat: 'forest',
                  catName: widget.cat.name,
                  catBreed: widget.cat.breed,
                  catAge: widget.cat.age,
                ).go(context);
              },
              child: const Text('Release to the wild'),
            ),
            ElevatedButton(
              onPressed: () {
                HouseCatViewRouteData(
                  catName: widget.cat.name,
                  catBreed: widget.cat.breed,
                  catAge: widget.cat.age,
                  ownerName: 'John Doe',
                  ownerAddress: '123 Main St',
                ).go(context);
              },
              child: const Text('Adopt this cat'),
            ),
          ],
        ),
      ),
    );
  }
}
