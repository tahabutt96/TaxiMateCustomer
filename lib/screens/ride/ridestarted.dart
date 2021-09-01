import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/ride/ontheway.dart';
import 'package:taximate_customer/screens/ride/ridecompleted.dart';
import 'package:taximate_customer/screens/widgets/messages.dart';

class RideStarted extends StatefulWidget {
  const RideStarted({Key? key}) : super(key: key);

  @override
  _RideStartedState createState() => _RideStartedState();
}


class _RideStartedState extends State<RideStarted> {

  ConstantColors constantColors = ConstantColors();

  void showRelevant() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.push(context, MaterialPageRoute(builder: (context) => Ridecompleted()));
  }

  @override
  void initState() {
    super.initState();
    showRelevant();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ride Started",
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
        physics: NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Stack(
            children: [

              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage("assets/images/googlemap.png"),
                    fit: BoxFit.cover,
                  )),
              Positioned(
                top:170,
                left: 50,
                child: Container(
                    child: Image(
                      image: AssetImage("assets/images/ridestart.png"),
                      fit: BoxFit.contain,
                      width: 300,
                      height: 300,
                    )),
              ),
            ],
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}
