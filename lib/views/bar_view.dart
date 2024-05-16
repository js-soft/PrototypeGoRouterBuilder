import 'package:flutter/material.dart';
import 'package:simple_app_playground/routing/routes.dart';

class BarView extends StatelessWidget {
  const BarView({super.key});

  @override
  Widget build(BuildContext context) {
    //offer a button labeled cat
    return Center(
      child: ElevatedButton(
        onPressed: () {
          const CatViewRouteData(
                  catName: 'Whiskers', catBreed: 'Siamese', catAge: 3)
              .go(context);
        },
        child: const Text('Cat'),
      ),
    );
  }
}
