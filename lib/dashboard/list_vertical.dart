// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:language_app/style/text.dart';

class VerticalListView extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  VerticalListView({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: data.map((item) {
        return SizedBox(
          height: 100, 
          child: Container(
            margin: EdgeInsets.only(
                bottom: 20, right: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Container(
                    width: 60,
                    height: 60, 
                    decoration: BoxDecoration(
                      color:
                          Colors.orange, // Set the background color to orange
                      borderRadius:
                          BorderRadius.circular(30), // Make it a circle
                      border: Border.all(
                          color: Colors.grey, width: 2.0), // Add a gray border
                    ),
                    child: Center(
                      child: Text(
                        ' 25%', // Add your text here
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255), // Text color
                          fontSize: 15.0, // Text size
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width:
                        15.0), 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(item['heading'],
                        style:
                            headingFirst(fontSize: 20, color: Colors.black87)),
                    Text(
                      item['subheading'],
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
