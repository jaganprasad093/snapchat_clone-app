import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';
import 'package:snapchat/global_widgets/custom_button.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

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
          Column(
            children: [
              Title(
                  color: ColorConstants.primaryBlack,
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 31),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enable app permission to \n make sign up easy,",
                style: TextStyle(
                    fontSize: 15,
                    color: ColorConstants.primaryBlack.withOpacity(.9)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset("assets/images/getstarted.png"),
            ],
          ),
          Text(
            "Tap “Allow” when prompted",
            style: TextStyle(
                fontSize: 13,
                color: ColorConstants.primaryBlack.withOpacity(.6)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: CustomButton(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => (),
                //     ));
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
