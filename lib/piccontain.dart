import 'package:flutter/material.dart';

class PicTextContain extends StatelessWidget {
  final String image;
  final String text;
  final double radius;
  const PicTextContain(
      {super.key,
      required this.image,
      required this.text,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: radius,
          width: radius,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            shape: BoxShape.circle,
          ),
        ),
        Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
