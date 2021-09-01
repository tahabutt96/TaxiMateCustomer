import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ConstantColors constantColors = ConstantColors();
  TextEditingController _username = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
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
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 58,
                  backgroundColor: constantColors.primaryColor,
                  child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white70,
                            child: Icon(Icons.camera_alt_outlined),
                          ),
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0, bottom: 10.0, left: 30.0, right: 30.0),
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
                       border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFFA6A8B6), width: 2.0),
                        ),
                        labelText: 'Your Name',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Container(
                  child: TextFormField(
                    controller: _email,
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
                        labelText: 'Email Addressr',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
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
                    Navigator.of(context).pop();
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120.0, vertical: 15.0),
                    child: Text("UPDATE"),
                  )),
              Row(
                  children: [
                    Spacer(),
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
                    Text("I agree to share my location."),
                    Spacer(),
                  ]),

            ],
          ),
        ),
      ),
    );
  }
}
