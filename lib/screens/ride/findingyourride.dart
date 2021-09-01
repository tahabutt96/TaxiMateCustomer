import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/driver/driver.dart';

class Findingyourride extends StatefulWidget {
  const Findingyourride({Key? key}) : super(key: key);

  @override
  _FindingyourrideState createState() => _FindingyourrideState();
}

class _FindingyourrideState extends State<Findingyourride> {
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Finding Your Ride",
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
    body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage("assets/images/googlemap.png"),
                    fit: BoxFit.cover,
                  )),
              Positioned(
                top: 120,
                left: 50,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Driver()));
                  },
                  child: Image(
                    image: AssetImage("assets/images/cars.png"),
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              Positioned(
                top: 430,
                left: 250,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Driver()));
                  },
                  child: Image(
                    image: AssetImage("assets/images/cars.png"),
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              Positioned(
                top: 250,
                left: 80,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Driver()));
                  },
                  child: Image(
                    image: AssetImage("assets/images/cars.png"),
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              Positioned(
                top: 350,
                left: 350,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Driver()));
                  },
                  child: Image(
                    image: AssetImage("assets/images/cars.png"),
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
    );
  }
}
