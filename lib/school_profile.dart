import 'package:dujo_web/widgets/custom_blue_button.dart';
import 'package:flutter/material.dart';

class SchoolProfile extends StatefulWidget {
  const SchoolProfile({super.key});

  @override
  State<SchoolProfile> createState() => _SchoolProfileState();
}

class _SchoolProfileState extends State<SchoolProfile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 95, 88),
      appBar: AppBar(title: Text('School Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: screenSize.width * 1 / 13),
          child: Center(
            child: Container(
              color: Colors.white,
              height: screenSize.width * 1 / 3,
              width: screenSize.width * 1 / 4,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'School Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'School ID',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Place',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Admin Username',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  height: screenSize.width * 1 / 15,
                  width: 400,
                  child: CustomBlueButton(
                    text: "Update",
                    onPressed: () {},
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
