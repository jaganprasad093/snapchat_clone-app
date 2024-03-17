import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snapchat/core/constants/color_constants.dart';

class Custom_chat_card extends StatelessWidget {
  const Custom_chat_card(
      {super.key,
      required this.username,
      required this.streak,
      required this.propic,
      required this.emoji});

  final String username;
  final String streak;
  final String propic;
  final bool emoji;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: ColorConstants.primaryGrey.withOpacity(.5)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
              vertical: 35,
            )),
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(propic),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: ColorConstants.normalRed,
                          borderRadius: BorderRadius.circular(2)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Tap to load",
                      style: TextStyle(
                          color: ColorConstants.normalRed,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          ". 1mo ",
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryGrey.withOpacity(.7)),
                        ),
                        Text(
                          streak,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        Text(
                          "🔥",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            emoji == true
                ? Text(
                    "😊",
                    style: TextStyle(fontSize: 20),
                  )
                : Text(
                    "🥶",
                    style: TextStyle(fontSize: 20),
                  ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: 0,
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                color: ColorConstants.primaryBlack.withOpacity(.5),
              ))),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.messenger_outline,
              color: ColorConstants.primaryGrey,
            ),
          ],
        ),
      ),
    );
  }
}
