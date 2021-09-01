import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taximate_customer/screens/ride/ridecoming.dart';
import 'package:taximate_customer/screens/widgets/messages.dart';

class Ontheway extends StatefulWidget {
  const Ontheway({Key? key}) : super(key: key);

  @override
  _OnthewayState createState() => _OnthewayState();
}

class _OnthewayState extends State<Ontheway> {
  void showRelevant() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Rideiscoming()));
  }

  @override
  void initState() {
    super.initState();
    showRelevant();
  }
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "On the way",
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
                          icon: Icons.person,
                          text: 'Profile',
                          onTap: () {
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
                    height: MediaQuery.of(context).size.height / 1.2,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 100,
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor:
                                        constantColors.primaryColor,
                                  )),

                              Container(
                                width: 130,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text("Farhan Khan"),
                                      subtitle: Text("Karachi, Sindh"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Container(
                                        child: RatingBar.builder(
                                          itemSize: 15,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          ignoreGestures: true,
                                          itemCount: 5,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
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
                                Text("Car's Model"),
                                Text("Cultus 2019",style: TextStyle(
                                  fontSize: 20
                                ),),
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
                                Text("Car's Number"),
                                Text("414-305",style: TextStyle(
                                    fontSize: 20
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
                                Text("Passanger"),
                                Text("04",style: TextStyle(
                                    fontSize: 20
                                )),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: constantColors.darkColor,
                        ),
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
                        SizedBox(height: 15),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constantColors.redColor),
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Waiting()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60.0, vertical: 15.0),
                              child: Text("CANCLE"),
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
