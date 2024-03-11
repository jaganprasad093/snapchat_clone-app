import 'package:flutter/material.dart';
import 'package:snapchat/core/constants/color_constants.dart';

class CustomTextfiled extends StatefulWidget {
  const CustomTextfiled({
    super.key,
    required this.text,
    this.textColor = ColorConstants.buttonBlue,
  });
  final String text;
  final Color textColor;

  @override
  State<CustomTextfiled> createState() => _CustomTextfiledState();
}

class _CustomTextfiledState extends State<CustomTextfiled> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
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
            ),
          )
        ],
      ),
    );
  }
}
