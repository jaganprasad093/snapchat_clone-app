import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/global_widgets/custom_button.dart';
import 'package:snapchat/global_widgets/custom_textfield.dart';
import 'package:snapchat/view/sign_up/your_dob.dart';

class Your_name extends StatelessWidget {
  const Your_name({super.key});

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
                "What's your name?",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.normal),
              )),
          Column(
            children: [
              CustomTextfiled(text: "FIRST NAME"),
              SizedBox(
                height: 20,
              ),
              CustomTextfiled(
                text: "LAST NAME",
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: RichText(
                      text: TextSpan(
                          text:
                              "By tapping Sign Up & Accept, you acknowledge that you have read the",
                          style: TextStyle(
                            fontSize: 10,
                            color: ColorConstants.primaryBlack,
                          ),
                          children: <TextSpan>[
                        new TextSpan(
                            text: "Privacy Policy",
                            style:
                                TextStyle(color: ColorConstants.primaryBlue)),
                        new TextSpan(
                            text: " and agree to the Terms of Service."),
                        TextSpan(
                            text: "Terms of Service.",
                            style: TextStyle(color: ColorConstants.primaryBlue))
                      ]))),
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90,
                ),
                child: CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Your_dob(),
                        ));
                  },
                  text: "SIGN UP & ACCEPT",
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
