import 'package:flutter/material.dart';
import 'package:language_app/data/language.dart';
import 'package:language_app/style/avatar.dart';
import 'package:language_app/style/text.dart';
import 'package:language_app/dashboard/main_dashboard.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 43, 99),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Welcome to',
                  style: headingSec(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  'Lingolattes',
                  style: headingFirst(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'Which language do you want to learn?',
                    style: headingSec(),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  child: buildLanguageGrid(),
                ),
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
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
      ),
      itemCount: languages.length,
      shrinkWrap: true,
      // ignore: prefer_const_constructors
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return AvatarWithText(
          imagePath: languages[index].imagePath,
          text: languages[index].name,
        );
      },
    );
  }
}


