// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:language_app/models/progress_bar.dart';
import 'package:language_app/views/style/text.dart';
import 'package:language_app/views/courses/courses.dart';

class HorizontalSliderListView extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  HorizontalSliderListView({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        height: 280,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final Map<String, dynamic> courseData = data[index];
            final List<Map<String, dynamic>> courses =
                List.from(courseData['courses']);
            return GestureDetector(
              onTap: () {
               
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Courses(courses: courses, category: courseData['title']);
                    },
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 20.0),
                width: 180,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(courseData['imageUrl']),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          courseData['title'],
                          style:
                              headingFirst(fontSize: 20, color: Colors.black87),
                        ),
                        Text(
                          courseData['description'],
                          style:
                              headingSec(fontSize: 15, color: Colors.black87),
                        ),
                        SizedBox(height: 8.0),
                        DividedProgressBar(
                          progress:
                              double.parse(courseData['progress'].toString()),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '${(double.parse(courseData['progress'].toString()) * 100).toInt()}% completed',
                          style: headingFirst(
                              fontSize: 12,
                              color: Color.fromARGB(221, 251, 185, 3)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
