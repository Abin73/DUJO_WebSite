import 'package:dujo_web/admin/admin_pannel_main.dart';
import 'package:dujo_web/class_teacher/classteacher_pannel.dart';
import 'package:dujo_web/teacher/teacher_pannel.dart';
import 'package:dujo_web/widgets/custom_button.dart';
import 'package:dujo_web/widgets/custom_n_container.dart';
import 'package:dujo_web/widgets/custom_tea_container.dart';
import 'package:flutter/material.dart';

class WebSignIn extends StatefulWidget {
  const WebSignIn({super.key});

  @override
  State<WebSignIn> createState() => _WebSignInState();
}

class _WebSignInState extends State<WebSignIn> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text("LOGIN")),
        backgroundColor: Color.fromARGB(255, 133, 243, 188),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Center(
              child: Container(
                  width: screenSize.width * 1 / 2.5,
                  height: screenSize.width * 1 / 2,
                  // height: screenSize.width * 1 / 4,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 9, 100, 91),
                      Color.fromARGB(255, 32, 158, 146),
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  ),
                  padding: const EdgeInsets.only(
                    top: 120,
                  ),
                  child: Column(children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AdminPage(),
                            ));
                      },
                      child: Container(
                          height: screenSize.width * 1 / 12,
                          width: screenSize.width * 1 / 4,
                          child: CustomButton(
                            text: 'Login as Admin',
                            onTap: () {},
                          )),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ClassTeacherAdmin(),
                            ));
                      },
                      child: Container(
                          height: screenSize.width * 1 / 12,
                          width: screenSize.width * 1 / 4,
                          child: CustomNewContainer(
                            text: 'Login as Class Teacher',
                            onTap: () {},
                          )),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TeacherPannelAdmin(),
                            ));
                      },
                      child: Container(
                          height: screenSize.width * 1 / 12,
                          width: screenSize.width * 1 / 4,
                          child: CustomTeaContainer(
                            text: 'Login as Teachers',
                            onTap: () {},
                          )),
                    ),
                  ])),
            ),
          ),
        ])));
  }
}
