import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/pickup/pickup.dart';
import 'package:taximate_customer/screens/takeme/takeme.dart';
import 'package:taximate_customer/screens/widgets/history.dart';
import 'package:taximate_customer/screens/widgets/profile.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  ConstantColors constantColors = ConstantColors();
  bool value = false;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  TextEditingController _username = TextEditingController();
  TextEditingController _phone = TextEditingController();
  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: constantColors.primaryColor,
        ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("TAHA BUTT",
                  style: TextStyle(
                    color: constantColors.darkColor,
                    fontSize: 16.0,
                  )),
            ),
          ),
          Container(
            child: Text("Johnsmith20@gmail.com",
                style: TextStyle(
                  color: constantColors.primaryFontColor,
                  fontSize: 16.0,
                )),
          ),
        ]));
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  showPickupAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("TaxiMate requires to access to your location.")),
      content: Container(
        height: MediaQuery.of(context).size.height/6,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Enable location services for more accurate pickup experience.",textAlign: TextAlign.center),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.greenColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Pickupcreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      child: Text("Turn on Location services",style: TextStyle(color: constantColors.lightColor),),
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
  showTakemeAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("TaxiMate requires to access to your location.")),
      content: Container(
        height: MediaQuery.of(context).size.height/6,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Enable location services for more accurate take me experience.",textAlign: TextAlign.center),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.greenColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Takemescreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      child: Text("Turn on Location services",style: TextStyle(color: constantColors.lightColor),),
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

  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: constantColors.darkFontColor),
        ),
        centerTitle: true,
        backgroundColor: constantColors.lightColor,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: constantColors.darkFontColor,
          ),
          onPressed: () => _key.currentState!.openDrawer(),
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: constantColors
              .primaryColor, //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              _createHeader(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: constantColors.lightColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      _createDrawerItem(
                        icon: Icons.home_outlined,
                        text: 'Home',
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      _createDrawerItem(
                        icon: Icons.pin_drop_outlined,
                        text: 'Save Address',
                        onTap: () {},
                      ),
                      _createDrawerItem(
                        icon: Icons.history,
                        text: 'History',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _createDrawerItem(
                          icon: Icons.person, text: 'Profile', onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                      }),
                      _createDrawerItem(
                          icon: Icons.logout, text: 'Log Out', onTap: () {}),
                    ],
                  ),
                ),
              )
            ],
          ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
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
                        Container(
                            child: Text(
                          "Where do you want to go ?",
                          style: TextStyle(fontSize: 20),
                        )),
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constantColors.greenColor),
                            onPressed: () {
                              showPickupAlertDialog(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 120.0, vertical: 15.0),
                              child: Text("PICK ME UP"),
                            )),
                        SizedBox(height: 10),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constantColors.purpleColor),
                            onPressed: () {
                             showTakemeAlertDialog(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 120.0, vertical: 15.0),
                              child: Text("TAKE ME TO"),
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
// final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       key: _key,

//   drawer: Drawer(),
