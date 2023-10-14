// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:language_app/dashboard/data/data.dart';
import 'package:language_app/dashboard/header_dashboard.dart';
import 'package:language_app/dashboard/list.dart';
import 'package:language_app/dashboard/list_vertical.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
        body: SingleChildScrollView(
          child: Column(
            children: [
              profileHeader(context), // Your existing widget
              // MyNewWidget(), // Use the new widget here
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'assets/img/german_icon.png',
                      width: 40.0,
                      height: 40.0,
                      // color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Deutsch',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Add space here

              SizedBox(
                child: HorizontalSliderListView(data: data),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Deutsch',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 15, left: 20),
                child: VerticalListView(data: data_vertical),
              )
            ],
          ),
        ),
      ),
    );
  }
}


