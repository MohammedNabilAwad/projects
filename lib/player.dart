import 'package:flutter/material.dart';

class palyer extends StatefulWidget {
  const palyer({Key? key}) : super(key: key);

  @override
  _palyerState createState() => _palyerState();
}

class _palyerState extends State<palyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  height: 70,
                  child: Card(
                      elevation: 5,
                      shadowColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(10),
                      ))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
