import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jetiffy/components/earnings_bonus.dart';
import 'package:jetiffy/components/notification_bell.dart';
import 'package:jetiffy/components/ratings_card.dart';

import '../constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes_rounded),
            label: 'Track',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trip_origin),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        title: Image.asset("assets/logo.png"),
        actions: const [
          NotificationBell(notificationCount: 5),
          SizedBox(width: 25)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text("Welcome Tolu,",
                  style: TextStyle(
                      color: Color(0xFF979797),
                      fontWeight: FontWeight.w600,
                      fontSize: 15)),
              const SizedBox(height: 16),
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
              const SizedBox(height: 24),
              Card(
                elevation: 15,
                shadowColor: Colors.black.withOpacity(0.11),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Container(
                  height: 168,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Main Balance",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          Text("₦ 5,000.00",
                              style: TextStyle(
                                  color: kBlackVariation,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Bonus Balance",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          Text("₦ 2,000.00",
                              style: TextStyle(
                                  color: kBlackVariation,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _fundsAction(kBlackVariation, "Transfer funds",
                              rotation: 5.6),
                          _fundsAction(kPrimaryColor, "Fund Wallet",
                              rotation: 2.3),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _cashOut(),
              const SizedBox(height: 24),
              const EarningsAndBonus(earnings: "5,000.00", bonus: "2,050.30"),
              const SizedBox(height: 24),
              const RatingsCard(ratings: 5.0)
            ],
          ),
        ),
      ),
    );
  }

  TextButton _fundsAction(Color color, String title,
      {required double rotation, AsyncCallback? onPressed}) {
    return TextButton(
        style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(266))),
            minimumSize: const Size(134.75, 34),
            primary: color,
            backgroundColor: color.withOpacity(0.1)),
        onPressed: onPressed ?? () {},
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            ),
            Transform.rotate(
                angle: rotation, child: const Icon(Icons.arrow_forward_rounded))
          ],
        ));
  }

  Card _cashOut() {
    return Card(
      color: kBlackVariation,
      elevation: 15,
      shadowColor: Colors.black.withOpacity(0.11),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: SizedBox(
        height: 59,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 68),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Cash out",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.3)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
