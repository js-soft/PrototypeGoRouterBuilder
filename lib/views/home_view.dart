import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_app_playground/routing/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({required this.child, super.key});

  final Widget child;

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location == '/bar') {
      return 1;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final int currentIndex = getCurrentIndex(context);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Foo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Bar',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              const FooRouteData().go(context);
            case 1:
              const BarRouteData().go(context);
          }
        },
      ),
    );
  }
}
