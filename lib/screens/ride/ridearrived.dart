import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/ride/ontheway.dart';
import 'package:taximate_customer/screens/ride/ridestarted.dart';
import 'package:taximate_customer/screens/widgets/messages.dart';

class RideArrived extends StatefulWidget {
  const RideArrived({Key? key}) : super(key: key);

  @override
  _RideArrivedState createState() => _RideArrivedState();
}


class _RideArrivedState extends State<RideArrived> {


  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Your ride has arrived")),
      content: Container(
        height: 80,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.greenColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RideStarted()));
                      },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      child: Text("CONFIRM",style: TextStyle(color: constantColors.lightColor),),
                    )),
              ),
            ]
        ),
      ),
      // actions: [
      //   okButton,
      // ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  ConstantColors constantColors = ConstantColors();

  void showRelevant() async {
    await Future.delayed(Duration(seconds: 1));
    showAlertDialog(context);
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
          "Ride Arrived",
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
                      image: AssetImage("assets/images/carmove.png"),
                      fit: BoxFit.contain,
                      width: 300,
                      height: 300,
                    )),
              ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constantColors.blueColor),
                            onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Messages()));
                            //showAlertDialog(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 120.0, vertical: 15.0),
                              child: Text("MESSAGE"),
                            )),
                      ],
                    ),
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
