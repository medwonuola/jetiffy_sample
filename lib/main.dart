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
        scaffoldBackgroundColor:  const Color(0xFFF9F9F9),
          primarySwatch: Colors.green,
          primaryColor: Colors.white,
          backgroundColor: Colors.white,

          appBarTheme: AppBarTheme(
            shadowColor: Colors.black.withOpacity(0.14),
            elevation: 4,

            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16),
              ),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            elevation: 0,
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            showUnselectedLabels: true,
            unselectedItemColor: Color(0x80979797),
            selectedLabelStyle: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 15),
            selectedItemColor: kPrimaryColor,
          )),
      home: const Home(),
    );
  }
}
