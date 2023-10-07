import 'package:flutter/material.dart';
import 'package:ui/followerpost.dart';
import 'package:ui/piccontain.dart';
import 'package:ui/postcommunityswitchscreen.dart';
import 'package:ui/postsbox.dart';

class ScreenUI extends StatelessWidget {
  const ScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.24,
              width: width * 0.57,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage("assets/boy.jpg")),
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Shane Mathias",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Co founder",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
                Icon(
                  Icons.hourglass_empty_sharp,
                  color: Colors.amber,
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 5),
              height: height * 0.12,
              child: Row(
                children: [
                  PicTextContain(
                    image: "assets/cat.jpg",
                    text: "Snowy",
                    radius: height * 0.08,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  PicTextContain(
                    image: "assets/dog.jpg",
                    text: "Sandy",
                    radius: height * 0.08,
                  ),
                ],
              ),
            ),
            const FollowPost(),
            const PostCommunitySwitch(),
            const PostsBox(),
          ],
        ),
      ),
    );
  }
}
