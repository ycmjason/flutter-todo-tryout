import 'package:flutter/material.dart';

import './home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODOOOOOO',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomePage(title: 'TODOOOOOO'),
    );
  }
}
