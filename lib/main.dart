import 'package:flutter/material.dart';
import 'package:jetiffy/screens/home.dart';

import 'constants.dart';

void main() {
  runApp(const Jetiffy());
}

class Jetiffy extends StatelessWidget {
  const Jetiffy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jetiffy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.white,
      ),
      home: const Home(),
    );
  }
}
