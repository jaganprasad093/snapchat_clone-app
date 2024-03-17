import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/core/constants/image_constants.dart';
import 'package:snapchat/view/chat_screen/widgets/custom_chat.dart';
import 'package:snapchat/view/dummy_db.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              width: 30,
            ),
            Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 30,
            ),
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
                Icons.messenger_outline_sharp,
                color: ColorConstants.primaryGrey,
              ),
              radius: 23,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              DummyDb.Chatlist.length,
              (index) => Custom_chat_card(
                    emoji: DummyDb.Chatlist[index]["emoji"],
                    propic: DummyDb.Chatlist[index]["propic"],
                    streak: DummyDb.Chatlist[index]["streak"],
                    username: DummyDb.Chatlist[index]["username"],
                  )),
        ),
      ),
    );
  }
}
