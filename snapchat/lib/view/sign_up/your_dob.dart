import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/global_widgets/custom_button.dart';
import 'package:snapchat/global_widgets/custom_textfield.dart';
import 'package:snapchat/view/sign_up/username.dart';

class Your_dob extends StatelessWidget {
  const Your_dob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black.withOpacity(.5),
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 130,
          ),
          Title(
              color: ColorConstants.primaryBlack,
              child: Text(
                "What's your birthday?",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.normal),
              )),
          Column(
            children: [
              CustomTextfiled(text: "BIRTHDAY"),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 110,
                ),
                child: CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Username(),
                        ));
                  },
                  text: "CONTINUE",
                  horizontalPadding: 30,
                  verticalPadding: 15,
                  buttonColor: ColorConstants.buttonBlue,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
