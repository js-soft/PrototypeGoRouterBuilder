import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final Exception error;

  const ErrorView({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Page'),
      ),
      body: Center(
        child: Text(
          error.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
