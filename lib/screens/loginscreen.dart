import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';
import 'package:taximate_customer/screens/homescreen.dart';
import 'package:taximate_customer/screens/registrationscreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;

  TextEditingController _username = TextEditingController();
  TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
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
                  "Sign In",
                  style: TextStyle(
                      color: constantColors.primaryFontColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Container(
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
                    //SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(children: [
                        Checkbox(
                          checkColor: constantColors.darkColor,  // color of tick Mark
                          activeColor: constantColors.primaryColor,
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                        Text("Remember Me"),
                        Spacer(),
                      ]),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: constantColors.primaryButtonColor),
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Homescreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 120.0, vertical: 15.0),
                          child: Text("LOGIN"),
                        )),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                              color: constantColors.primaryFontColor, fontSize: 15),
                        ),
                        Text(
                          "Sign Up",
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
              )
            ],
          ),
        ),
      ),
      // bottomSheet: bottomsheet(),
    );
  }

  // bottomsheet(BuildContext context) {
  //   ConstantColors constantColors = ConstantColors();
  //   return ;
  // }
}
