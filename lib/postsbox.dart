import 'package:flutter/material.dart';

class PostsBox extends StatelessWidget {
  const PostsBox({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        SizedBox(
          width: width * 0.4,
          height: height * 0.15,
          child: Image.asset(
            "assets/cat.jpg",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: width * 0.018,
        ),
        SizedBox(
          width: width * 0.4,
          height: height * 0.15,
          child: Image.asset("assets/dog.jpg"),
        ),
      ],
    );
  }
}
