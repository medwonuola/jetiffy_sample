import 'package:flutter/material.dart';

class BackWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const BackWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 34,
          width: 34,
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Stack(children: const [
            Positioned(
              left: 10,
              height: 34,
              child: Center(
                  child: Icon(Icons.arrow_back_ios,
                      color: Colors.black, size: 16)),
            )
          ])),
    );
  }
}
