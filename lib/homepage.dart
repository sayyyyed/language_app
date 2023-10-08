// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:language_app/style/avatar.dart';
import 'package:language_app/style/text.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 43, 99),
        // appBar: AppBar(
        //   backgroundColor: Color.fromARGB(255, 36, 43, 99),
        //   elevation: 0,
        // ),
        body: SingleChildScrollView(
          child : Container(
          margin: EdgeInsets.only(left: 40, right: 40, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome to',
                style: headingSec(fontSize: 15),
              ),
              Text(
                'Lingolattes',
                style: headingFirst(),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Text(
                  'Which language do you want to learn?',
                  style: headingSec(),
                ),
              ),
              SizedBox(height: 20, width:50), // Add space here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AvatarWithText(
                    imagePath: 'assets/img/spain.png',
                    text: 'Spanish',
                  ),
                  SizedBox(width: 50),
                  AvatarWithText(
                    imagePath: 'assets/img/russia.png',
                    text: 'Russian',
                  ),
                ],
              ),
              SizedBox(height: 20, width:50), // Add space here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AvatarWithText(
                    imagePath: 'assets/img/portugal.png',
                    text: 'Portuguese',
                  ),
                  SizedBox(width: 50),
                  AvatarWithText(
                    imagePath: 'assets/img/deu.png',
                    text: 'German',
                  ),
                ],
              ),
               SizedBox(height: 20, width:50), // Add space here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AvatarWithText(
                    imagePath: 'assets/img/skorea.png',
                    text: 'Korean',
                  ),
                  SizedBox(width: 50),
                  AvatarWithText(
                    imagePath: 'assets/img/italy.png',
                    text: 'Italian',
                  ),
                ],
              ),
            ],
          ),
        ),
        )
        
      ),
    );
  }
}


