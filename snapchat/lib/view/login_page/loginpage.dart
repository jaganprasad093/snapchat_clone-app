import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/global_widgets/custom_button.dart';
import 'package:snapchat/global_widgets/custom_textfield.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
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
                "Log In",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
              )),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              CustomTextfiled(text: "USER NAME OR E-MAIL"),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PASSWORD",
                      style: TextStyle(
                          color: ColorConstants.primaryBlue,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: Icon(Icons.visibility_off)),
                    )
                  ],
                ),
              )
            ],
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Text(
            "forgot password",
            style: TextStyle(color: ColorConstants.primaryBlue),
          ),
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: CustomButton(
              text: "LOG IN",
              horizontalPadding: 30,
              verticalPadding: 15,
              buttonColor: ColorConstants.buttonBlue,
            ),
          )
        ],
      ),
    );
  }
}
