import 'package:flutter/material.dart';
import 'package:snapchat/view/splash_screen/splashscreen.dart';

void main() {
  runApp(Snapchat());
}

class Snapchat extends StatelessWidget {
  const Snapchat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
    );
  }
}
