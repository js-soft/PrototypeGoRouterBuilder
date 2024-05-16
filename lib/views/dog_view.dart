import 'package:flutter/material.dart';
import 'package:simple_app_playground/routing/routes.dart';

import '../data/dogs.dart';

class DogView extends StatefulWidget {
  final Dog dog;
  const DogView({super.key, required this.dog});

  @override
  DogViewState createState() => DogViewState();
}

class DogViewState extends State<DogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              const FooRouteData().go(context);
            },
          ),
          title: const Text('Dog Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Name: ${widget.dog.name}',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'Breed: ${widget.dog.breed}',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'Age: ${widget.dog.age}',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
