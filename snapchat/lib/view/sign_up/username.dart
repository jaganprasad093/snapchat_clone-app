import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/global_widgets/custom_button.dart';
import 'package:snapchat/global_widgets/custom_textfield.dart';
import 'package:snapchat/view/sign_up/getstarted.dart';

class Username extends StatelessWidget {
  const Username({super.key});

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
            height: 70,
          ),
          Column(
            children: [
              Title(
                  color: ColorConstants.primaryBlack,
                  child: Text(
                    "Your username",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 30),
              Text(
                "ft_jxxn",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
              ),
              SizedBox(height: 20),
              Text("change my username",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: ColorConstants.primaryBlue)),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Getstarted(),
                    ));
              },
              text: "CONTINUE",
              horizontalPadding: 30,
              verticalPadding: 15,
              buttonColor: ColorConstants.buttonBlue,
            ),
          ),
        ],
      ),
    );
  }
}
