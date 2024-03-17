import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/core/constants/image_constants.dart';

class story_card extends StatelessWidget {
  const story_card({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 41,
                backgroundColor: ColorConstants.primaypink,
                child: CircleAvatar(
                  radius: 39,
                  backgroundColor: ColorConstants.primaryWhite.withOpacity(.6),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(ImageConstants.snapchaticon),
                  ),
                ),
              ),
              Text(
                "user",
                style: TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
