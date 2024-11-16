import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  const Btn(
      {super.key,
      required this.text,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.pink, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: FittedBox(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
