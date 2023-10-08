  // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:language_app/style/text.dart';
  Column profileHeader(BuildContext context) {
    return Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(20.0), // Adjust the radius as needed
                  bottomRight: Radius.circular(20.0), // Adjust the radius as needed
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size .width, // Set the width as needed
                  height: 225.0, // Set the height as needed
                  child: Container(
                    color:Color.fromARGB(255, 36, 43, 99), // Background color
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 45, left: 40),
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/img/avatar.png'),
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 25, right: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.white,
                                    ), // Replace with your first icon
                                    SizedBox(
                                        width:
                                            20), // Adjust spacing between icons
                                    Icon(
                                      Icons.search,
                                      size: 30,
                                      color: Colors.white,
                                    ), // Replace with your second icon
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top:
                                  10.0), // Add padding or adjust as needed
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Welcome back,',
                                      style: headingSec(fontSize: 25),
                                    ),
                                    
                                    
                                    Text('Amelia',
                                        style: headingFirst(fontSize: 40)),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: 65, bottom: 10),
                                  child: Column(
                                    children: [
                                      Text('Level',
                                          style: headingSec(fontSize: 15, color: Color.fromARGB(255, 234, 188, 5))),
                                      Container(
                                        margin: EdgeInsets.only(top: 3),
                                        height: 50.0,
                                        width: 50.0,
                                          color: Colors.transparent,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  0, 255, 255, 255),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15.0),
                                              ),
                                              border: Border.all(
                                                color: Color.fromARGB(
                                                    255,
                                                    234,
                                                    188,
                                                    5), // Adjust the border color here
                                                width:
                                                    2.0, // Adjust the border thickness here
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(
                                                  8.0), // Adjust the padding to center the text
                                              child: Center(
                                                child: Text(
                                                  "5",
                                                  style: headingFirst(
                                                    fontSize: 30,
                                                    color: Color.fromARGB(
                                                        255, 234, 188, 5),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          )

                                      )
                                    ],
                                  ),
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
          );
  }
