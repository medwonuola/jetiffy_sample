import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jetiffy/components/earnings_bonus.dart';
import 'package:jetiffy/components/notification_bell.dart';
import 'package:jetiffy/components/ratings_card.dart';
import 'package:jetiffy/screens/incoming_order.dart';

import '../constants.dart';

class Home extends StatefulWidget {
  static const routeName = "/";

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightFactor = size.height / 954;
    double widthFactor = size.width / 414;

    final buttonStyle = ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 15,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        minimumSize: Size(158 * widthFactor, 55),
        maximumSize: Size(183 * widthFactor, 55),
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
              SizedBox(height: 16 * heightFactor),
              const Text("Welcome Tolu,",
                  style: TextStyle(
                      color: Color(0xFF979797),
                      fontWeight: FontWeight.w600,
                      fontSize: 15)),
              SizedBox(height: 16 * heightFactor),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, IncomingOrder.routeName);
                    },
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Online",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                          Container(
                              width: 37,
                              height: 20,
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(218))),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      margin: const EdgeInsets.only(left: 4),
                                      height: 14,
                                      width: 13,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle)))),
                          const Text(
                            "Offline",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          )
                        ]))
              ]),
              SizedBox(height: 24 * heightFactor),
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
                          _fundsAction(
                              kBlackVariation, "Transfer funds", widthFactor,
                              rotation: 5.6),
                          _fundsAction(
                              kPrimaryColor, "Fund Wallet", widthFactor,
                              rotation: 2.3),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24 * heightFactor),
              _cashOut(),
              SizedBox(height: 24 * heightFactor),
              const EarningsAndBonus(earnings: "5,000.00", bonus: "2,050.30"),
              SizedBox(height: 24 * heightFactor),
              const RatingsCard(ratings: 5.0)
            ],
          ),
        ),
      ),
    );
  }

  TextButton _fundsAction(Color color, String title, double widthFactor,
      {required double rotation, AsyncCallback? onPressed}) {
    return TextButton(
        style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(266))),
            minimumSize: Size(134.75 * widthFactor, 34),
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
      child: InkWell(
        onTap: () {},
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
      ),
    );
  }
}
