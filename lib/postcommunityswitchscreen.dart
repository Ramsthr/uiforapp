import 'package:flutter/material.dart';
import 'package:ui/gesturetext.dart';

class PostCommunitySwitch extends StatefulWidget {
  const PostCommunitySwitch({Key? key}) : super(key: key);

  @override
  State<PostCommunitySwitch> createState() => _PostCommunitySwitchState();
}

class _PostCommunitySwitchState extends State<PostCommunitySwitch> {
  int selectedIndex = 0;
  final List<String> tabs = ["Posts", "Stamp Book", "Community"];
  List<bool> isSelected = [true, false, false];

  void onTapTab(int index) {
    setState(() {
      for (int i = 0; i < tabs.length; i++) {
        if (i == index) {
          selectedIndex = index;
        } else {
          isSelected[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.09,
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List.generate(tabs.length, (index) {
          return GestureText(
            text: tabs[index],
            isSelected: index == selectedIndex,
            onTap: () => onTapTab(index),
          );
        }),
      ),
    );
  }
}
