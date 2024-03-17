import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';

class Add_friend_widget extends StatelessWidget {
  const Add_friend_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
            decoration: BoxDecoration(
                color: ColorConstants.white.withOpacity(.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: ColorConstants.primaryBlack.withOpacity(.5))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person,
                    color: ColorConstants.primaryBlue,
                    size: 40,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ft_jxxn",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Recently joined",
                        style: TextStyle(
                            fontSize: 13,
                            color: ColorConstants.primaryBlack.withOpacity(.5)))
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ColorConstants.primaypink,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(children: [
                    Icon(
                      Icons.add,
                      color: ColorConstants.primaryWhite,
                    ),
                    Text(
                      " Add  ",
                      style: TextStyle(
                          color: ColorConstants.primaryWhite,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.close,
                  color: ColorConstants.primaryBlack.withOpacity(.4),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
