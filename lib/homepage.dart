import 'package:flutter/material.dart';
import 'package:language_app/data/language.dart';
import 'package:language_app/style/avatar.dart';
import 'package:language_app/style/text.dart';
import 'package:language_app/dashboard/main_dashboard.dart';

class MyHomePage extends StatelessWidget {
  final String? firstName;

  MyHomePage({Key? key, this.firstName}) : super(key: key);
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
                Container( 
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
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () {
          // Handle grid item tap, you can navigate to a new screen or perform other actions
          onGridItemTap(index + 1); // Pass the index starting from 1
          Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Dashboard( firstName: firstName,
                       selectedIndex: index,)),
                      );
        },
        child: AvatarWithText(
          imagePath: languages[index].imagePath,
          text: languages[index].name,
        ),
      );
    },
  );
}

void onGridItemTap(int index) {
  // Handle grid item tap here
  print('Grid item tapped! Index: $index');

  // You can navigate to a new screen or perform other actions with the index
  // Example:
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => SomeScreen(index: index),
  //   ),
  // );
}
}
