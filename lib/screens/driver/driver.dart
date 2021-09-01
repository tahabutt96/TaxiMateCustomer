import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/ride/waitingforride.dart';

class Driver extends StatefulWidget {
  const Driver({Key? key}) : super(key: key);

  @override
  _DriverState createState() => _DriverState();
}

class _DriverState extends State<Driver> {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Do you have any instructions for your driver ?")),
      content: Container(
        height: 220,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: constantColors.lightColor,
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  ),
                  border: Border.all(color: constantColors.primaryFontColor,width: 1)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.darkFontColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Waiting()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      child: Text("SAVE INSTRUCTIONS",style: TextStyle(color: constantColors.lightColor),),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.greenColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                      //  Navigator.push(context, MaterialPageRoute(builder: (context) => Pickupcreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 61.0, vertical: 15.0),
                      child: Text("CANCLE",style: TextStyle(color: constantColors.lightColor),),
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

  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(
          "Driver Information",
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
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
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
        child: Container(
          color: constantColors.primaryColor,
          child: ConstrainedBox(
            constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Stack(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 100,
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor:
                                constantColors.lightColor,
                              )),
                        ),
                      ),

                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text("Farhan Khan",style: TextStyle(color: constantColors.primaryFontColor,fontWeight: FontWeight.bold,fontSize: 20),),
                              ),
                              Text("Karachi, Sindh"),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  child: RatingBar.builder(
                                    itemSize: 15,
                                    initialRating: 4,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    ignoreGestures: true,
                                    itemCount: 5,
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: constantColors.lightColor,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.6),
                                            borderRadius: BorderRadius.all(Radius.circular(8)
                                            ),
                                          ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Car's Model",style: TextStyle(fontSize:14, color: constantColors.primaryColor),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Cultus 2019"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.6),
                                            borderRadius: BorderRadius.all(Radius.circular(8)
                                            ),
                                          ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Car's Model",style: TextStyle(fontSize:14, color: constantColors.primaryColor),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Cultus 2019"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.6),
                                            borderRadius: BorderRadius.all(Radius.circular(8)
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Car's Model",style: TextStyle(fontSize:14, color: constantColors.primaryColor),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Cultus 2019"),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

               Positioned(
                  top: MediaQuery.of(context).size.height / 2.9,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
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
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Pickme()));
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
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Pickme()));
                                  },
                                  child: Text("Change Destination",style: TextStyle(color: Colors.blue))),
                            ),
                          ),
                          SizedBox(height: 15),
                          Divider(
                            color: constantColors.darkColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total Kilometer"),
                                  Text("15 Km",style: TextStyle(
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
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: constantColors.lightColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: constantColors.greenColor),
                              onPressed: () {
                                showAlertDialog(context);
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Pickupcreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 15.0),
                                child: Text("SELECT"),
                              )),
                          SizedBox(width: 20),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: constantColors.redColor),
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Takemescreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 15.0),
                                child: Text("CANCLE"),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 70),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }
}
