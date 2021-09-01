import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';

class Destination extends StatefulWidget {
  const Destination({Key? key}) : super(key: key);

  @override
  _DestinationState createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Destination",
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
    );
  }
}
