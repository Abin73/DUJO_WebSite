import 'package:dujo_web/home_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF02BB9F),
          primaryColorDark: const Color(0xFF167F67),
          accentColor: const Color(0xFF02BB9F),
        ),
        home: HomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFE8EAF6),
        title: Container(
            width: double.infinity,
            //height: 130,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                ),
                InkWell(
                  hoverColor: Color(0xFF26A69A),
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 75,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    color: Color(0xFF3949AB),
                  ),
                  Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width * 0.65,
                    color: Color(0xFF26A69A),
                  ),
                  Container(
                    //padding: const EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.4),
                    child: ClipPath(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 600,
                        color: Color(0xFF26A69A),
                      ),
                      clipper: CustomClipPath(),
                    ),
                  ),
                  Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width * 0.45,
                    color: Color(0XFFE8EAF6),
                  ),
                  Container(
                    //padding: const EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2),
                    child: ClipPath(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 600,
                        color: Color(0XFFE8EAF6),
                      ),
                      clipper: CustomClipPath(),
                    ),
                  ),
                  Container(
                      height: screenSize.height / 2,
                      margin: EdgeInsets.only(
                          left: screenSize.width * .7, top: 115),
                      child: Image.asset("assets/images/ann.png")),
                  Container(
                      height: screenSize.height / 6,
                      margin: EdgeInsets.only(
                          left: screenSize.width * .025, top: 10),
                      child: Image.asset(
                        "assets/images/lepdujo.jpeg",
                        width: 400,
                        height: 200,
                      )),
                  Container(
                      height: screenSize.height / 6,
                      margin: EdgeInsets.only(
                          left: screenSize.width * .05, top: 40),
                      child: Image.asset(
                        "assets/images/dujo2.png",
                        width: 150,
                        height: 75,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 300, top: 200),
                    child: Column(
                      children: [
                        Text(
                          "Logon,",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              "Feed Your",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " Mind,",
                              style: TextStyle(color: Colors.red, fontSize: 50),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Change The",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " World!",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: screenSize.width * 0.55, top: 150),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white60, width: 2.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/onlineprofessor.png",
                          height: 50,
                          width: 50,
                        ),
                        Text("Be a Freelance Faculty  ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: screenSize.width * 0.82, top: 250),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white60, width: 2.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/settings.png",
                          height: 50,
                          width: 50,
                        ),
                        Text("Configure Your Class Room",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            )),
                        Text("Add Recorded Courses",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            )),
                        Text(
                          "Add Online Courses",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text("Configure Your Class Room,and More",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: screenSize.width * 0.6, top: 350),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white60, width: 2.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/hybrid.png",
                          height: 100,
                          width: 150,
                        ),
                        Text("Invite Students",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: screenSize.width * 0.2, top: 450),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xFF224D83),
                        border: Border.all(color: Colors.white60, width: 2.0),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child:
                            //Image.asset("assets/images/hybrid.png",height: 100,width: 150,),
                            Text("Explore Courses",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ))),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50, top: 30),
            child: Row(children: <Widget>[
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
            ]),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: Text("Online Courses",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
                Container(
                    child: Text("Recorded Courses",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
                Container(
                    child: Text("Hybrid Courses",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
                Container(
                    child: Text("Study Materials",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
                Container(
                    child: Text("Mock Tests",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50, top: 30),
            child: Row(children: <Widget>[
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
            ]),
          ),
          Row(
            children: [
              Container(
                width: screenSize.width * 0.25,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF224D83),
                    border: Border.all(color: Colors.white60, width: 2.0),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [Icon(Icons.search), TextField()],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
