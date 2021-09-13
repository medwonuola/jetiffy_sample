import 'package:flutter/material.dart';
import 'package:jetiffy/components/address_text.dart';
import 'package:jetiffy/components/back_widget.dart';
import 'package:jetiffy/components/time_distance.dart';
import 'package:jetiffy/components/timer.dart';
import 'package:jetiffy/screens/begin_trip.dart';
import '../constants.dart';

class IncomingOrder extends StatefulWidget {
  static const routeName = "/incoming-order";

  const IncomingOrder({Key? key}) : super(key: key);

  @override
  _IncomingOrderState createState() => _IncomingOrderState();
}

class _IncomingOrderState extends State<IncomingOrder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightFactor = size.height / 954;
    double widthFactor = size.width / 414;

    final buttonStyle = ElevatedButton.styleFrom(
        elevation: 6,
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        minimumSize: Size(173 * widthFactor, 47 * heightFactor));

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          title: const Text(
            "Incoming Order",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22.5,
                color: Colors.black),
          ),
          leading: const BackWidget()),
      body: Stack(
        children: [
          Positioned(
            left: 110 * widthFactor,
            top: 50 * heightFactor,
            child: _routeTime(),
          ),
          Positioned(
              top: 100 * heightFactor,
              width: size.width,
              child: Center(
                  child: Image.asset("assets/root.png",
                      height: 158 * heightFactor, width: 186 * widthFactor))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                elevation: 15,
                shadowColor: Colors.black.withOpacity(0.1),
                child: Container(
                  width: double.infinity,
                  height: 552 * heightFactor,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24))),
                  child: Stack(
                    children: [
                      const Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              width: 40,
                              child: Divider(
                                  thickness: 3, color: Color(0xFFF2F2F2)))),
                      Align(
                        alignment: Alignment.topRight,
                        child: _callButton(heightFactor, widthFactor),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24 * widthFactor,
                            vertical: 40 * heightFactor),
                        child: Column(
                          children: [
                            const AddressText(
                              title: "Sender's",
                              address:
                                  "7 Prince Ibrahim Odofin Street Idado Estate Igbo-Efon",
                            ),
                            const SizedBox(height: 8),
                            const AddressText(
                              title: "Receiver",
                              address:
                                  "7 Prince Ibrahim Estate Igbo-Efon 7 Prince Ibrahim Odofin Street Idado",
                            ),
                            const SizedBox(height: 3),
                            const TimeAndDistance(
                                time: "20 secs", distance: "2.8 km"),
                            const SizedBox(height: 25),
                            const TimerIndicator(),
                            const SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: buttonStyle.copyWith(
                                      shadowColor: MaterialStateProperty.all(
                                          kRedVariation.withOpacity(0.34)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              kRedVariation),
                                    ),
                                    child: const Text("Reject")),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, BeginTrip.routeName);
                                    },
                                    style: buttonStyle.copyWith(
                                      shadowColor: MaterialStateProperty.all(
                                          kBlackVariation.withOpacity(0.34)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              kBlackVariation),
                                    ),
                                    child: const Text("Accept Trip")),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Card _routeTime() {
    return const Card(
        color: kPrimaryColor,
        elevation: 4,
        shadowColor: kPrimaryColor,
        shape: StadiumBorder(),
        child: SizedBox(
            height: 29,
            width: 70,
            child: Center(
                child: Text("7 min",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white)))));
  }

  Padding _callButton(double heightFactor, double widthFactor) {
    return Padding(
      padding: EdgeInsets.only(top: 44 * heightFactor, right: 32 * widthFactor),
      child: Container(
        height: 40,
        width: 40,
        decoration:
            const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
        child: const Center(
            child: Icon(
          Icons.call,
          color: Colors.white,
        )),
      ),
    );
  }
}
