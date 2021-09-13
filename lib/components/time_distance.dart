import 'package:flutter/material.dart';

import '../constants.dart';

class TimeAndDistance extends StatelessWidget {
  final String time;
  final String distance;

  const TimeAndDistance({Key? key, required this.time, required this.distance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: kPrimaryColor,
      shadowColor: Colors.black.withOpacity(0.11),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: SizedBox(
        height: 96 ,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildColumn("Time", time),
            Container(
              color: Colors.white,
              width: 1,
              height: 64 ,
            ),
            buildColumn("Distance", distance),
          ],
        ),
      ),
    );
  }

  Column buildColumn(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12),
        ),
        const SizedBox(height: 12),
        Text(
          value,
          style: const TextStyle(
              fontWeight: FontWeight.w400, fontSize: 22.5, color: Colors.white),
        )
      ],
    );
  }
}
