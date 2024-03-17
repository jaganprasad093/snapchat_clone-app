import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
  CustomGrid({
    super.key,
  });

  final List listofimages = [
    "https://images.pexels.com/photos/4067753/pexels-photo-4067753.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3916455/pexels-photo-3916455.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1855582/pexels-photo-1855582.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1559193/pexels-photo-1559193.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 2),
          itemBuilder: (context, index) => Container(
            child: Image.network(
              listofimages[index],
              fit: BoxFit.cover,
            ),
            height: MediaQuery.sizeOf(context).width * .50,
            width: MediaQuery.sizeOf(context).width * .75,
          ),
          itemCount: 6,
        ),
      ],
    );
  }
}
