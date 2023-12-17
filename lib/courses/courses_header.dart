import 'package:flutter/material.dart';
import 'package:language_app/dashboard/main_dashboard.dart';
import 'package:language_app/style/text.dart';

Column CoursesHeader(BuildContext context) {
  return Column(
    children: <Widget>[
      Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0), // Adjust the radius as needed
              bottomRight: Radius.circular(20.0), // Adjust the radius as needed
            ),
            child: SizedBox(
              width:
                  MediaQuery.of(context).size.width, // Set the width as needed
              height: 150.0, // Set the height as needed
              child: Container(
                color: Color.fromARGB(255, 36, 43, 99), // Background color
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10.0), // Add padding or adjust as needed
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Course A1.2,',
                                      style: headingSec(fontSize: 25),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Wechselprapositionen',
                                    style: headingFirst(fontSize: 30)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )
    ],
  );
}
