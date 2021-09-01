import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/ride/ontheway.dart';
import 'package:taximate_customer/screens/ride/ridearrived.dart';
import 'package:taximate_customer/screens/widgets/messages.dart';

class Rideiscoming extends StatefulWidget {
  const Rideiscoming({Key? key}) : super(key: key);

  @override
  _RideiscomingState createState() => _RideiscomingState();
}


class _RideiscomingState extends State<Rideiscoming> {
  void showRelevant() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => RideArrived()));
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
          "Ride is Coming",
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
      body:  SingleChildScrollView(
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: constantColors.lightColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child:         Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: constantColors.lightColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 20),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: constantColors.blueColor),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Messages()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 120.0, vertical: 15.0),
                                child: Text("MESSAGE"),
                              )),
                        ],
                      ),
                    )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}

