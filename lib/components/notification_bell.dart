import 'package:flutter/material.dart';

import '../constants.dart';

class NotificationBell extends StatelessWidget {
  final int notificationCount;

  const NotificationBell({Key? key, required this.notificationCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 34,
        width: 34,
        decoration: const BoxDecoration(
            color: Color(0xFF1A1A1A), shape: BoxShape.circle),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 4,
              child: Container(
                height: 15,
                width: 15,
                child: Center(
                    child: Text(
                  notificationCount.toString(),
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                )),
                decoration: const BoxDecoration(
                    color: kPrimaryColor, shape: BoxShape.circle),
              ),
            ),
            const Center(child: Icon(Icons.notifications_none_rounded))
          ],
        ),
      ),
    );
  }
}
