import 'package:flutter/material.dart';
import 'package:taximate_customer/costants/constantcolors.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  ConstantColors constantColors = ConstantColors();
  TextEditingController _username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ride Arrived",
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
        physics: NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Stack(
            children: [
              Positioned(
                top: -170,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage("assets/images/chat.png"),
                        fit: BoxFit.contain,
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right:20,bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: Container(
                              height: 50,
                              width: 220,
                              child: TextFormField(
                                enabled: false,
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
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: constantColors.greenColor),
                                onPressed: () {
                             //     Navigator.push(context, MaterialPageRoute(builder: (context) => Messages()));
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30.0, vertical: 15.0),
                                  child: Text("SEND"),
                                )),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
