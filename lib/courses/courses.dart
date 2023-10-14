// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:language_app/courses/courses_header.dart';
import 'package:language_app/style/text.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'My App',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CoursesHeader(context),
              Container(
                
                margin: EdgeInsets.only(top: 20, bottom: 15, left: 40, right: 40),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                  'Overview',
                  style: headingFirst(fontSize: 20, color: Colors.black87),
                ),
                //long text for description
                Container(
                  
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    'Kvicha is a Georgian language learning app that helps you learn Georgian in a fun and interactive way. It is a great app for beginners and advanced learners alike. The app is available for both iOS and Android devices.',
                    style: headingFirst(fontSize: 12, color: Colors.black87),
                  ),
                ),
                  ],
                  
                ),
              )
            ]
          )
        )
      )
    );
  }
}