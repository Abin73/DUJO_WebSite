import 'package:dujo_web/widgets/custom_blue_button.dart';
import 'package:flutter/material.dart';

class AddClasses extends StatefulWidget {
  const AddClasses({super.key});

  @override
  State<AddClasses> createState() => _AddClassesState();
}

class _AddClassesState extends State<AddClasses> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 95, 88),
      appBar: AppBar(title: Text('ADD CLASSES')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: screenSize.width * 1 / 9),
          child: Center(
            child: Container(
              color: Colors.white,
              height: screenSize.width * 1 / 4,
              width: screenSize.width * 1 / 4,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Class ID',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Class Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Class Incharge',
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
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
