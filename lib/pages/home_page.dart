import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:otpify/pages/profile_page.dart';
import '../auth/login.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          title: Text(
            'WELCOME',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 28, 144, 237),
          actions: [
            Padding(
                padding: EdgeInsets.all(8),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FlutterRemix.message_2_line),
                  color: Colors.white,
                ))
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'OTP NOTIFIER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color.fromARGB(255, 28, 144, 237),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 28, 144, 237),
                  ),
                  title: Text('Home'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 28, 144, 237),
                  ),
                  title: Text('Profile'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 28, 144, 237),
                  ),
                  title: Text('Log out'),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    child: SizedBox(
                      height: 300,
                      width: 500,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Recent OTP",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 30, horizontal: 40),
                                  child: Text(
                                    "OTP 1",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 30, horizontal: 40),
                                  child: Text(
                                    "OTP 2",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 15),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    child: SizedBox(
                      height: 430,
                      width: 500,
                      child: Container(
                        color: Colors.white,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 20),
                                child: Text(
                                  "Select the mode",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                color: Colors.white,
                                child: new Container(
                                  child: new Center(
                                      child: new Column(children: [
                                    new TextFormField(
                                      decoration: new InputDecoration(
                                        labelText: "Enter Email",
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(15.0),
                                          borderSide: new BorderSide(),
                                        ),
                                        //fillColor: Colors.green
                                      ),
                                      validator: (val) {
                                        if (val == "") {
                                          return "Email cannot be empty";
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ])),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                color: Colors.white,
                                child: new Container(
                                  child: new Center(
                                      child: new Column(children: [
                                    new TextFormField(
                                      decoration: new InputDecoration(
                                        labelText: "Enter Phone Number",
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(15.0),
                                          borderSide: new BorderSide(),
                                        ),
                                        //fillColor: Colors.green
                                      ),
                                      validator: (val) {
                                        if (val == "") {
                                          return "Email cannot be empty";
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ])),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                color: Colors.white,
                                child: new Container(
                                  child: new Center(
                                      child: new Column(children: [
                                    new TextFormField(
                                      decoration: new InputDecoration(
                                        labelText: "Enter Whatsapp Number",
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(15.0),
                                          borderSide: new BorderSide(),
                                        ),
                                        //fillColor: Colors.green
                                      ),
                                      validator: (val) {
                                        if (val == "") {
                                          return "Email cannot be empty";
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ])),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                color: Colors.white,
                                child: new Container(
                                  child: new Center(
                                      child: new Column(children: [
                                    new TextFormField(
                                      decoration: new InputDecoration(
                                        labelText: "Enter Secondary Phone No",
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(15.0),
                                          borderSide: new BorderSide(),
                                        ),
                                        //fillColor: Colors.green
                                      ),
                                      validator: (val) {
                                        if (val == "") {
                                          return "Email cannot be empty";
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ])),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
