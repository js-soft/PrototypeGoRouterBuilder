import 'package:flutter/material.dart';

class SimpleView extends StatefulWidget {
  final int numberA;
  final int numberB;

  const SimpleView({super.key, required this.numberA, required this.numberB});

  @override
  SimpleViewState createState() => SimpleViewState();
}

class SimpleViewState extends State<SimpleView> {
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
          title: const Text('Simple Page'),
        ),
        body: Center(
          child: Text(
            'Sum of ${widget.numberA} and ${widget.numberB} is: ${widget.numberA + widget.numberB}',
            style: const TextStyle(fontSize: 24),
          ),
        ));
  }
}
