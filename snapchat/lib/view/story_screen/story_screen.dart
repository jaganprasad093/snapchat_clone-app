import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/core/constants/image_constants.dart';
import 'package:snapchat/view/story_screen/widgets/add_friend_card.dart';
import 'package:snapchat/view/story_screen/widgets/custom_grid.dart';
import 'package:snapchat/view/story_screen/widgets/story_widgets.dart';

class Story_screen extends StatelessWidget {
  const Story_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.profileAvathar),
                  radius: 23,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.search,
                    color: ColorConstants.primaryGrey,
                  ),
                  backgroundColor: ColorConstants.white.withOpacity(.7),
                  radius: 23,
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Stories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 30,
            ),
            Row(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.person_add_alt,
                    color: ColorConstants.primaryGrey,
                  ),
                  backgroundColor: ColorConstants.white.withOpacity(.7),
                  radius: 23,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: ColorConstants.white.withOpacity(.7),
                  child: Icon(
                    Icons.more_horiz,
                    color: ColorConstants.primaryGrey,
                  ),
                  radius: 23,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Friends",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstants.white.withOpacity(.7)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: ColorConstants.normalRed,
                              ),
                              Text("My Story  ")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) => story_card()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quick Add",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Hide",
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryBlack.withOpacity(.5)),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          List.generate(3, (index) => Add_friend_widget()),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 23, vertical: 10),
                        child: Text(
                          "For You",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: List.generate(3, (index) => CustomGrid()),
            )
          ],
        ),
      ),
    );
  }
}
