import 'package:flutter/material.dart';
import 'package:jetiffy/components/back_widget.dart';
import '../constants.dart';

class BeginTrip extends StatefulWidget {
  static const routeName = "/begin-trip";

  const BeginTrip({Key? key}) : super(key: key);

  @override
  _BeginTripState createState() => _BeginTripState();
}

class _BeginTripState extends State<BeginTrip> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightFactor = size.height / 954;
    double widthFactor = size.width / 414;

    final buttonStyle = ElevatedButton.styleFrom(
        elevation: 6,
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        minimumSize: Size(173 * widthFactor, 56 * heightFactor));

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          title: const Text(
            "Begin Trip",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22.5,
                color: Colors.black),
          ),
          leading: const BackWidget()),
      body: Stack(
        children: [
          Positioned(
              top: 300 * heightFactor,
              right: 48,
              child: Image.asset("assets/route.png")),
          Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                elevation: 15,
                shadowColor: Colors.black.withOpacity(0.1),
                child: Container(
                  width: double.infinity,
                  height: 340 * heightFactor,
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
                              thickness: 3,
                              color: Color(0xFFF2F2F2),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24 * widthFactor,
                            vertical: 38 * heightFactor),
                        child: Column(
                          children: [
                            const Spacer(),
                            Card(
                              elevation: 4,
                              shadowColor: Colors.black.withOpacity(0.2),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: SizedBox(
                                height: 151 * heightFactor,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text(
                                      "04 m : 18s",
                                      style: TextStyle(
                                          fontSize: 22.5,
                                          fontWeight: FontWeight.w700,
                                          color: kPrimaryColor),
                                    ),
                                    Text("Omobolaji",
                                        style: TextStyle(
                                            color: Color(0xFF3E4958),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400)),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 24),
                                      child: Text(
                                          "7 Prince Ibrahim Odofin Street Idado Estate Igbo-Efon",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFF3C3A3A),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: buttonStyle.copyWith(
                                      shadowColor: MaterialStateProperty.all(
                                          kRedVariation.withOpacity(0.34)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              kRedVariation),
                                    ),
                                    child: const Text("Cancel trip")),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: buttonStyle.copyWith(
                                      shadowColor: MaterialStateProperty.all(
                                          kBlackVariation.withOpacity(0.34)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              kBlackVariation),
                                    ),
                                    child: const Text("Start trip")),
                              ],
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: _callButton(heightFactor, widthFactor),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Padding _callButton(double heightFactor, double widthFactor) {
    return Padding(
      padding: EdgeInsets.only(top: 64 * heightFactor, right: 49 * widthFactor),
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
