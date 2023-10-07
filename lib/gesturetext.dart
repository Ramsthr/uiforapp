import 'package:flutter/material.dart';

class GestureText extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const GestureText({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 22),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.white38,
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: 2.7,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blueAccent : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
