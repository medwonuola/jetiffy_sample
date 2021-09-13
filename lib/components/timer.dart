import 'package:flutter/material.dart';

import '../constants.dart';

class TimerIndicator extends StatelessWidget {
  const TimerIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightFactor = size.height / 954;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              25,
                  (index) => Container(
                color: const Color(0xFFC4C4C4),
                width: 1,
                height: index % 4 == 0 ? 16 : 11,
              )),
        ),
        SizedBox(height: 8 * heightFactor),
        const Card(
          elevation: 0,
          color: Color(0xFFEDEEEF),
          shape: StadiumBorder(),
          child: SizedBox(
              height: 5,
              width: double.infinity,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Card(
                      margin: EdgeInsets.only(right: 23),
                      elevation: 0,
                      color: kPrimaryColor,
                      shape: StadiumBorder(),
                      child: SizedBox(height: 5, width: double.infinity)))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("0 s",
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontWeight: FontWeight.w400,
                    fontSize: 12)),
            Text("20 s",
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontWeight: FontWeight.w400,
                    fontSize: 12)),
          ],
        )
      ],
    );
  }
}
