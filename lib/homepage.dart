import 'package:flutter/material.dart';
import 'package:language_app/style/avatar.dart';
import 'package:language_app/style/text.dart';

class MyHomePage extends StatelessWidget {
  final List<Language> languages = [
    Language('Spanish', 'assets/img/spain.png'),
    Language('Russian', 'assets/img/russia.png'),
    Language('Portuguese', 'assets/img/portugal.png'),
    Language('German', 'assets/img/deu.png'),
    Language('Korean', 'assets/img/skorea.png'),
    Language('Italian', 'assets/img/italy.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 43, 99),
        body: SingleChildScrollView(
          child: Container(
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
                // SizedBox(height: 20), // Add space here
                buildLanguageGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLanguageGrid() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // You can adjust the number of columns as needed
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
      ),
      itemCount: languages.length,
      shrinkWrap: true,
      // ignore: prefer_const_constructors
      physics: NeverScrollableScrollPhysics(), // Disable scrolling
      itemBuilder: (BuildContext context, int index) {
        return AvatarWithText(
          imagePath: languages[index].imagePath,
          text: languages[index].name,
        );
      },
    );
  }
}

class Language {
  final String name;
  final String imagePath;

  Language(this.name, this.imagePath);
}
