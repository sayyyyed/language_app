import 'package:flutter/material.dart';
import 'package:language_app/models/data.dart';
import 'package:language_app/views/dashboard/header_dashboard.dart';
import 'package:language_app/views/dashboard/list.dart';
import 'package:language_app/views/dashboard/list_vertical.dart';
import 'package:language_app/viewmodel/fetch_german.dart';
import 'package:language_app/viewmodel/fetch_portuguese.dart';

class Dashboard extends StatelessWidget {
  final String? firstName;
  final int? selectedIndex;
  const Dashboard({Key? key, this.firstName, this.selectedIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
        body: SingleChildScrollView(
          child: Column(
            children: [
              profileHeader(context, firstName: firstName),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      selectedIndex == 1
                          ? 'assets/img/portugal_icon.png'
                          : 'assets/img/german_icon.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      selectedIndex == 1 ? 'Portuguese' : 'Deutsch',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              FutureBuilder<List<Map<String, dynamic>>>(
                future: selectedIndex == 1
                    ? FetchPortuguese.fetchData()
                    : FetchGerman.fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    List<Map<String, dynamic>> selectedData = snapshot.data!;
                    return SizedBox(
                      child: HorizontalSliderListView(data: selectedData),
                    );
                  }
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Achievment',
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
