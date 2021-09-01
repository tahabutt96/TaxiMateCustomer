import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/ride/ontheway.dart';

class Waiting extends StatefulWidget {
  const Waiting({Key? key}) : super(key: key);

  @override
  _WaitingState createState() => _WaitingState();
}


class _WaitingState extends State<Waiting> {
  void showRelevant() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Ontheway()));
  }

  @override
  void initState() {
    super.initState();
    showRelevant();
  }
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Finding your ride",
          style: TextStyle(color: constantColors.darkFontColor),
        ),
        centerTitle: true,
        backgroundColor: constantColors.lightColor,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: constantColors.darkFontColor,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Center(
          child: Image(image: AssetImage("assets/images/waiting.png"),height: 100,
          width: 100,),
        ),
      ),
    );
  }
}
