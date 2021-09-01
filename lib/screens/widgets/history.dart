import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "History",
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
            SizedBox(height: 30,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      height: 250,
                      child: Image(
                          image: AssetImage("assets/images/history1.png"),
                          fit: BoxFit.cover,
                          height: 120,
                          width: MediaQuery.of(context).size.width
                      )),
                ),
                Positioned(
                  left: 15,
                  right: 15,
                  bottom: 120,
                  child: Container(
                      height: 250,
                      child: Image(
                          image: AssetImage("assets/images/googlemap.png"),
                          fit: BoxFit.cover,
                          height: 150,
                          width: MediaQuery.of(context).size.width
                      )),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      height: 250,
                      child: Image(
                          image: AssetImage("assets/images/history2.png"),
                          fit: BoxFit.cover,
                          height: 120,
                          width: MediaQuery.of(context).size.width
                      )),
                ),
                Positioned(
                  left: 15,
                  right: 15,
                  bottom: 120,
                  child: Container(
                      height: 250,
                      child: Image(
                          image: AssetImage("assets/images/googlemap.png"),
                          fit: BoxFit.cover,
                          height: 150,
                          width: MediaQuery.of(context).size.width
                      )),
                ),

              ],
            )


          ],
        ),
      ),
    );
  }
}
