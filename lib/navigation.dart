import 'package:flutter/material.dart';

class RoutelessNavPage extends StatelessWidget {
  RoutelessNavPage({required this.navKey, required this.initialPage});

  final GlobalKey<NavigatorState> navKey;
  final Widget initialPage;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navKey,
      onGenerateRoute: (_) => MaterialPageRoute(
        builder: (_) => initialPage,
      ),
    );
  }
}