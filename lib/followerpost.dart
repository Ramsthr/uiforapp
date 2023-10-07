import 'package:flutter/material.dart';

class FollowPost extends StatelessWidget {
  const FollowPost({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "2\nPosts      ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: height * 0.07,
            width: 3,
            child: const ColoredBox(color: Colors.black),
          ),
          const Text(
            "1\nFollowers",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: height * 0.07,
            width: 3,
            child: const ColoredBox(color: Colors.black),
          ),
          const Text(
            "2\nFollowing",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
