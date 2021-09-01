import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';

class Pickme extends StatefulWidget {
  const Pickme({Key? key}) : super(key: key);

  @override
  _PickmeState createState() => _PickmeState();
}

class _PickmeState extends State<Pickme> {
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pick Me",
          style: TextStyle(color: constantColors.darkFontColor),
        ),
        centerTitle: true,
        backgroundColor: constantColors.lightColor,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: constantColors.darkFontColor,
          ),
          onPressed: () {
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: constantColors.primaryFontColor
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 50),
                      Container(
                        child: Text("Search for a Location"),

                      ),
                      SizedBox(width: 50),
                      Container(
                        height: 40,
                        width: 100,
                        color: constantColors.primaryColor,
                        child: Center(child: Text("SEARCH"),),
                      )
                    ],
                  ),
                )
              ),
            ),
            Container(
              color: Color(0xFFE8EBF2),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(child: ListTile(
                  leading: Icon(Icons.pin_drop),
                  title: Text("Select Location from map"),
                )),
              ),
            ),
            Container(
              color: Colors.grey.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.only(top: 20,bottom: 20),
                    child: Text("Saved Location"),
                  ),
                ),
              ),
            ),
            Container(
              child: ListTile(
                title: Text("Home"),
                subtitle: Text("Shaheed Hassan Askari Street"),
                trailing: Icon(Icons.favorite,color: constantColors.greenColor,)),
            ),
            Container(
              child: ListTile(
                title: Text("Office-DivsnPixel"),
                subtitle: Text("Office LS-17-18 First Floor Near Power House Chowrangi, Karachi"),
                trailing: Icon(Icons.favorite,color: constantColors.greenColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
