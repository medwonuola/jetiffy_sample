import 'package:flutter/material.dart';

import '../constants.dart';

class EarningsAndBonus extends StatelessWidget {
  final String bonus;
  final String earnings;

  const EarningsAndBonus(
      {Key? key, required this.bonus, required this.earnings})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shadowColor: Colors.black.withOpacity(0.11),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 96,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildColumn("earnings", earnings),
            Container(
              color: const Color(0xFFD8D8D8),
              width: 1,
              height: 64,
            ),
            buildColumn("bonus", bonus),
          ],
        ),
      ),
    );
  }

  Column buildColumn(String title, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Today's $title",
          style: const TextStyle(
              color: Color(0xFF969696),
              fontWeight: FontWeight.w700,
              fontSize: 12),
        ),
        const SizedBox(height: 12),
        Text(
          "₦ $value",
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.5,
              color: kBlackVariation),
        )
      ],
    );
  }
}
