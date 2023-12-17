// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:language_app/login.dart';
import 'package:language_app/style/text.dart';

Column profileHeader(BuildContext context, {String? firstName}) {
  return Column(
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 225.0,
          child: Container(
            color: Color.fromARGB(255, 36, 43, 99),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 45, left: 40),
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/img/avatar.png'),
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 25, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.logout_outlined,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome back,',
                              style: headingSec(fontSize: 25),
                            ),
                            Text(firstName!, style: headingFirst(fontSize: 40)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 65, bottom: 10),
                          child: Column(
                            children: [
                              Text('Level',
                                  style: headingSec(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 234, 188, 5))),
                              Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 50.0,
                                  width: 50.0,
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(0, 255, 255, 255),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0),
                                      ),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 234, 188, 5),
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
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
                                  ))
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
