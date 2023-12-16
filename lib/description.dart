import 'package:flutter/material.dart';

class Desc extends StatelessWidget {
  final String title;
  final String category;
  final String description;
  final String image;
  final String difficulty;
  final String time;

  Desc({
    required this.title,
    required this.category,
    required this.description,
    required this.image,
    required this.difficulty,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: TextStyle(
            color: const Color.fromARGB(255, 252, 252, 252),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 36, 43, 99),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 122, 122, 122),
                      width: 3.0,
                    ),
                  ),
                  child: Image.asset(
                    image,
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //centered text
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 36, 43, 99),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.punch_clock_rounded,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 36, 43, 99),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.book,
                          color: const Color.fromARGB(255, 250, 250, 250),
                          size: 30.0,
                        ),
                      ),
                    ),
                    Text(
                      difficulty,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Read More',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(221, 251, 185, 3),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
