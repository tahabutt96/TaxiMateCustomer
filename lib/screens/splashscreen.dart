import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/loginscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void showRelevant() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  void initState() {
    super.initState();
    showRelevant();
  }

  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return Scaffold(
      backgroundColor: constantColors.primaryColor,
      body: Center(
          child: Image(image: AssetImage("assets/icons/splashicon.png"),height: 200,width: 200,)),
    );
  }
}