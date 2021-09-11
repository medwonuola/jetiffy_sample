import 'package:flutter/material.dart';
import 'package:jetiffy/components/notification_bell.dart';
import 'package:jetiffy/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 15,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        minimumSize: const Size(158, 55),
        shadowColor: Colors.black.withOpacity(0.11));

    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.black.withOpacity(0.14),
          elevation: 4,
          centerTitle: true,
          title: Image.asset("assets/logo.png"),
          actions: const [
            NotificationBell(notificationCount: 2),
            SizedBox(width: 25)
          ],
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(7),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            const Text("Welcome Tolu,",
                style: TextStyle(
                    color: Color(0xFF979797),
                    fontWeight: FontWeight.w600,
                    fontSize: 15)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  style: buttonStyle,
                  icon: const Icon(Icons.radio_button_checked,
                      color: Colors.black),
                  label: const Text(
                    "Set Direction",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  )),
              ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {},
                  child: Row(children: const [
                    Text(
                      "Online",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    Text(
                      "Offline",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    )
                  ]))
            ]),
            Card(
              child: Row(),
            )
          ],
        ),
      ),
    );
  }
}
