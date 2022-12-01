import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  splash() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image(
              image: AssetImage("my_image/splash.png"),
              color: Colors.black,
              width: 200,
              height: 50),
        ),
        Center(
          child: Text(
            "An Innovative Concept",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
        GradientText(
          gradientType: GradientType.linear,
          gradientDirection: GradientDirection.ttb,
          colors: [Color(0xff47BFDF), Color(0xff4A91FF)],
          "Forcasting",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    )));
  }
}
