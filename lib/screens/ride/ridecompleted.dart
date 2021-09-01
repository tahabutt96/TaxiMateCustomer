import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/pickup/pickme.dart';
import 'package:taximate_customer/screens/takeme/takeme.dart';
import 'package:taximate_customer/screens/widgets/payment.dart';
import 'package:taximate_customer/screens/widgets/profile.dart';

class Ridecompleted extends StatefulWidget {
  const Ridecompleted({Key? key}) : super(key: key);

  @override
  _RidecompletedState createState() => _RidecompletedState();
}

class _RidecompletedState extends State<Ridecompleted> {
  ConstantColors constantColors = ConstantColors();
  bool value = false;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  TextEditingController _username = TextEditingController();
  TextEditingController _phone = TextEditingController();
  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Ride is completed")),
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
                      showsecondAlertDialog(context);
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => RideStarted()));
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
  showsecondAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("How do you want to pay ?")),
      content: Container(
        height: 140,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      child: Text("CASH",style: TextStyle(color: constantColors.lightColor),),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.purpleColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      child: Text("CARD",style: TextStyle(color: constantColors.lightColor),),
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


  @override
  Widget build(BuildContext context) {

    ConstantColors constantColors = ConstantColors();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(
          "Ride Completed",
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
                        onTap: () {},
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
              Positioned(
                top: MediaQuery.of(context).size.height / 2.2,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: constantColors.lightColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: ListTile(
                            title: Text("Home"),
                            subtitle: Text("Shaheed Hassan Askari Street"),
                            trailing: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Pickme()));
                                },
                                child: Text("Change Destination",style: TextStyle(color: Colors.blue))),
                          ),
                        ),
                        Container(
                          child: ListTile(
                            title: Text("Office-DivsnPixel"),
                            subtitle: Text("Office LS-17-18 First Floor Near Power House Chowrangi, Karachi"),
                            trailing: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Pickme()));
                                },
                                child: Text("Change Destination",style: TextStyle(color: Colors.blue))),
                          ),
                        ),
                        Divider(
                          color: constantColors.darkColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Payment"),
                                Text("\$157.04",style: TextStyle(
                                    fontSize: 20,fontWeight: FontWeight.bold
                                )),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: constantColors.darkColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: constantColors.greenColor),
                              onPressed: () {
                                showAlertDialog(context);
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Takemescreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 15.0),
                                child: Text("PAY"),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}
