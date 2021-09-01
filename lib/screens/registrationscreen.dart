import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/loginscreen.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  ConstantColors constantColors = ConstantColors();
  TextEditingController _username = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _verificationcode1 = TextEditingController();
  TextEditingController _verificationcode2 = TextEditingController();
  TextEditingController _verificationcode3 = TextEditingController();
  TextEditingController _verificationcode4 = TextEditingController();

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Enter Verification Code")),
      content: Container(
        height: MediaQuery.of(context).size.height/3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("We have sent you a 4 digit verification code on 0800-321202-4",textAlign: TextAlign.center),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 60,
                      height: 60,
                      child: Center(
                        child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                            ],
                          style: TextStyle(
                            fontSize: 25
                          ),
                          controller: _verificationcode1,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                             border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                              ),

                              ),
                        ),
                      ),
                  ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                            ],
                            style: TextStyle(
                                fontSize: 25
                            ),
                            controller: _verificationcode2,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                            ],
                            style: TextStyle(
                                fontSize: 25
                            ),
                            controller: _verificationcode3,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                            ],
                            style: TextStyle(
                                fontSize: 25
                            ),
                            controller: _verificationcode4,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: constantColors.primaryColor),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80.0, vertical: 15.0),
                      child: Text("VERIFY NOW",style: TextStyle(color: constantColors.darkColor),),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(child: Text("Resend Code ?")),
              )
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
    return Scaffold(
      backgroundColor: constantColors.primaryColor,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: Image(
                image: AssetImage("assets/icons/splashicon.png"),
                height: 100,
                width: 100,
              )),
              SizedBox(height: 50),
              Container(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: constantColors.primaryFontColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              bottomsheet()
            ],
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }

  bottomsheet() {
    ConstantColors constantColors = ConstantColors();
    return Container(
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
          Padding(
            padding: const EdgeInsets.only(
                top: 50.0, bottom: 10.0, left: 30.0, right: 30.0),
            child: Container(
              child: TextFormField(
                controller: _username,
                // validator: (value) {
                //   if (value!.isEmpty || !value.contains('@')) {
                //     return 'Please enter a valid email.';
                //   }
                //   return null;
                // },
                //autofocus: true,
                textInputAction: TextInputAction.next,
                //focusNode: _emailFocus,
                //onFieldSubmitted: (term) {
                //  FocusScope.of(context).requestFocus(_passwordFocus);
                //  },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                    ),
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 20.0, left: 30.0, right: 30.0),
            child: Container(
              child: TextFormField(
                controller: _phone,
                // validator: (value) {
                //   if (value!.isEmpty || !value.contains('@')) {
                //     return 'Please enter a valid email.';
                //   }
                //   return null;
                // },
                //autofocus: true,
                textInputAction: TextInputAction.next,
                //focusNode: _emailFocus,
                //onFieldSubmitted: (term) {
                //  FocusScope.of(context).requestFocus(_passwordFocus);
                //  },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                    ),
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: constantColors.primaryButtonColor),
              onPressed: () {
                showAlertDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 120.0, vertical: 15.0),
                child: Text("NEXT"),
              )),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Already have an account? ",
                style: TextStyle(
                    color: constantColors.primaryFontColor, fontSize: 15),
              ),
              Text(
                "Sign In",
                style: TextStyle(
                    color: constantColors.darkColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
