// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:language_app/courses/courses_header.dart';
import 'package:language_app/data/courses_list.dart';
import 'package:language_app/description.dart';
import 'package:language_app/style/text.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 233, 233, 233),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniStartFloat,
            floatingActionButton: FloatingActionButton.extended(
              //border
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              backgroundColor: Color.fromARGB(221, 251, 185, 3),
              foregroundColor: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.menu),
              label: Text('Browse Courses',
                  style: headingFirst(fontSize: 12.0, color: Colors.black87)),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: [
                CoursesHeader(context),
                Container(
                  margin:
                      EdgeInsets.only(top: 20, bottom: 15, left: 40, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Overview',
                        style:
                            headingFirst(fontSize: 20, color: Colors.black87),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Wechselprapositionen is a course that will help you to learn the prepositions that are used with the accusative and dative cases. This course is for A1.2 level students',
                          style:
                              headingFirst(fontSize: 12, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.2,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  items: dataCourses
                      .map((course) => HeroCarouselCard(
                            title: course['title']!,
                            description: course['description']!,
                            image: course['image']!,
                            category: course[
                                'category']!, // Add similar checks for other fields
                            difficulty: course['difficulity']!,
                            time: course['time']!,
                          ))
                      .toList(),
                ),
              ],
            ))));
  }
}

class HeroCarouselCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String category;
  final String difficulty;
  final String time;

  HeroCarouselCard({
    required this.title,
    required this.description,
    required this.image,
    required this.category,
    required this.difficulty,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Desc(
              image: image!, // Use the correct variable names
              title: title!,
              description: description!,
              category: category!,
              difficulty: difficulty!,
              time: time!,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: 300, // Set the desired width of the card
        // height: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image(image: AssetImage(image!), height: 130)),
            SizedBox(height: 0.0),
            Container(
              margin: EdgeInsets.only(top: 20.0, right: 10, left: 10),
              child: Text(
                title!,
                style: headingFirst(fontSize: 20, color: Colors.black87),
                //handle overflow
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                description!.length > 100
                    ? '${description!.substring(0, 75)}...'
                    : description!,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 36, 43, 99)),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
