import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/core/constants/image_constants.dart';
import 'package:snapchat/view/login_page/loginpage.dart';
import 'package:snapchat/view/sign_up/your_name.dart';

class SnapchatLogin extends StatelessWidget {
  const SnapchatLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 250),
              child: Image.asset(
                ImageConstants.appIconPng,
                scale: 1.5,
              ),
            ),
            Row(
              verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login_page(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                    decoration: BoxDecoration(
                      color: ColorConstants.primaryWhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Log In",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Your_name(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                    decoration: BoxDecoration(
                      color: ColorConstants.primaryBlue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: ColorConstants.primaryWhite),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      backgroundColor: ColorConstants.primaryYellow,
    );
  }
}
