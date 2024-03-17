import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/view/chat_screen/chat_screen.dart';
import 'package:snapchat/view/homepage/hompage.dart';
import 'package:snapchat/view/story_screen/story_screen.dart';

class BottomNavigation_screen extends StatefulWidget {
  BottomNavigation_screen({super.key});

  @override
  State<BottomNavigation_screen> createState() =>
      _BottomNavigation_screenState();
}

class _BottomNavigation_screenState extends State<BottomNavigation_screen> {
  List screenpages = [
    Homepage(),
    Chatscreen(),
    Container(
      color: Colors.blue,
    ),
    Story_screen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.grey,
    )
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenpages[index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            index = value;
            setState(() {});
          },
          backgroundColor: ColorConstants.primaryBlack,
          selectedItemColor: ColorConstants.primaypink,
          unselectedItemColor: ColorConstants.primaryWhite,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on_outlined,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_outlined),
              label: "",
            )
          ]),
    );
  }
}
