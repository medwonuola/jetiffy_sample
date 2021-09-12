import 'package:flutter/material.dart';

import '../constants.dart';

class AddressText extends StatelessWidget {
  final String title;
  final String address;

  const AddressText({Key? key, required this.title, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightFactor = size.height / 954;
    double widthFactor = size.width / 414;
    return Padding(
      padding: const EdgeInsets.only(right: 64),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.add_circle_outline_outlined,
                  size: 13, color: kPrimaryColor),
              SizedBox(width: 10 * widthFactor),
              Text(
                "$title Address",
                style: const TextStyle(
                    color: Color(0xFF8D8C8C),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(height: 8 * heightFactor),
          Text(
            address,
            style: const TextStyle(
                color: Color(0xFF3C3A3A),
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
