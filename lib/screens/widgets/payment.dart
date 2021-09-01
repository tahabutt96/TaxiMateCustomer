import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/widgets/review.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  ConstantColors constantColors = ConstantColors();
  TextEditingController _name = TextEditingController();
  TextEditingController _cardnum = TextEditingController();
  TextEditingController _cvc = TextEditingController();
  TextEditingController _month = TextEditingController();
  TextEditingController _year = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "CARD DETAILS",
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
              SizedBox(height: 30),
              Container(
                child: Text("Enter Your Card Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Container(
                  child: TextFormField(
                    controller: _name,
                    // validator: (value) {
                    //   if (value!.isEmpty || !value.contains('@')) {
                    //     return 'Please enter a valid email.';
                    //   }
                    //   return null;
                    // },
                    //autofocus: true,

                    //focusNode: _emailFocus,
                    //onFieldSubmitted: (term) {
                    //  FocusScope.of(context).requestFocus(_passwordFocus);
                    //  },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                        ),
                        labelText: 'Card Holder Title',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 240,
                      height: 80,
                      child: TextFormField(
                        controller: _cardnum,
                        // validator: (value) {
                        //   if (value!.isEmpty || !value.contains('@')) {
                        //     return 'Please enter a valid email.';
                        //   }
                        //   return null;
                        // },
                        //autofocus: true,

                        //focusNode: _emailFocus,
                        //onFieldSubmitted: (term) {
                        //  FocusScope.of(context).requestFocus(_passwordFocus);
                        //  },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                            ),
                            labelText: 'Card Number',
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 100,
                      height: 80,
                      child: TextFormField(
                        controller: _cvc,
                        // validator: (value) {
                        //   if (value!.isEmpty || !value.contains('@')) {
                        //     return 'Please enter a valid email.';
                        //   }
                        //   return null;
                        // },
                        //autofocus: true,

                        //focusNode: _emailFocus,
                        //onFieldSubmitted: (term) {
                        //  FocusScope.of(context).requestFocus(_passwordFocus);
                        //  },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                            ),
                            labelText: 'CVC',
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 170,
                    height: 80,
                    child: TextFormField(
                      controller: _month,
                      // validator: (value) {
                      //   if (value!.isEmpty || !value.contains('@')) {
                      //     return 'Please enter a valid email.';
                      //   }
                      //   return null;
                      // },
                      //autofocus: true,

                      //focusNode: _emailFocus,
                      //onFieldSubmitted: (term) {
                      //  FocusScope.of(context).requestFocus(_passwordFocus);
                      //  },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                          ),
                          labelText: 'Expiry Month',
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 170,
                    height: 80,
                    child: TextFormField(
                      controller: _year,
                      // validator: (value) {
                      //   if (value!.isEmpty || !value.contains('@')) {
                      //     return 'Please enter a valid email.';
                      //   }
                      //   return null;
                      // },
                      //autofocus: true,

                      //focusNode: _emailFocus,
                      //onFieldSubmitted: (term) {
                      //  FocusScope.of(context).requestFocus(_passwordFocus);
                      //  },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                          ),
                          labelText: 'Expiry Year',
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text("Ride Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  child: ListTile(
                    title: Text("Home"),
                    subtitle: Text("Shaheed Hassan Askari Street"),
                   ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Container(
                  child: ListTile(
                    title: Text("Office-DivsnPixel"),
                    subtitle: Text("Office LS-17-18 First Floor Near Power House Chowrangi, Karachi"),
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
                      Text("Trip Cost"),
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tip Amount"),
                      Text("\$0.00",style: TextStyle(
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
                      Text("Total Amount"),
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
                    //  showAlertDialog(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Review()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 15.0),
                      child: Text("CONFIRM"),
                    )),
              ),
            ],
          ),
        )
    );
  }
}
