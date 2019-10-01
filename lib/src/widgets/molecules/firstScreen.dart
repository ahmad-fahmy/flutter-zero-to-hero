import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_zero_to_hero/src/pages/homePage.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SplashScreen(
        seconds: 5,
        navigateAfterSeconds: HomePage(),
        image: Image.asset("images/logo-bhinneka.png"),
        photoSize: 120.0,
        backgroundColor: Colors.black,
        loaderColor: Color(0xffF6C60F),
      );
}
