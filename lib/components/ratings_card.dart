import 'package:flutter/material.dart';
import '../constants.dart';

class RatingsCard extends StatelessWidget {
  final double ratings;

  const RatingsCard({Key? key, required this.ratings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBlackVariation,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: SizedBox(
        height: 59,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "View rating",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Row(
              children: List.generate(
                  ratings.toInt(),
                  (index) => const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 16,
                      )),
            ),
            Text(
              ratings.toString(),
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
