import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/homescreen.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Review",
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
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child:  Container(
                      height: MediaQuery.of(context).size.height/3,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage("assets/images/googlemap.png"),
                        fit: BoxFit.cover,
                      )),

                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Positioned(
                    top: 20,
                    child: Container(
                        height: MediaQuery.of(context).size.height/3,
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: AssetImage("assets/images/review.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0,right: 60),
              child: Container(
                height: 120,
                  child: Image(
                    image: AssetImage("assets/images/address.png"),
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height/4,
                    width: 250
                  )),
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              width: 300,
              color: constantColors.primaryButtonColor,
              child: Column(
                children: [
                  Spacer(),
                  Text("How was your trip Umesh ?",style: TextStyle(color: constantColors.lightColor),),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      child: RatingBar.builder(
                        itemSize: 15,
                        initialRating: 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: constantColors.primaryColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: constantColors.greenColor),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 15.0),
                    child: Text("SUBMIT"),
                  )),
            ),
            SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }
}
