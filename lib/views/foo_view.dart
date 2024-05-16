import 'package:flutter/material.dart';
import 'package:simple_app_playground/routing/routes.dart';

import '../data/dogs.dart';

class FooView extends StatelessWidget {
  const FooView({super.key});

  @override
  Widget build(BuildContext context) {
    // two centered buttons with text 'Dog' and 'DogAlt'
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                const SimpleViewRouteData(A: 3, B: 4).go(context);
                //const SimpleViewRouteData(A: 3, B: '4').go(context);
              },
              child: const Text('Simple Addition')),
          ElevatedButton(
            onPressed: () {
              const DogPageRouteData(
                dogName: 'Fido',
                dogBreed: 'Golden Retriever',
                dogAge: 3,
              ).go(context);
            },
            child: const Text('Dog'),
          ),
          ElevatedButton(
            onPressed: () {
              Dog myDog = Dog(
                name: 'Fido',
                breed: 'Golden Retriever',
                age: 3,
              );

              DogPageRouteDataAlt(
                $extra: myDog,
              ).go(context);
            },
            child: const Text('DogAlt'),
          ),
        ],
      ),
    );
  }
}
