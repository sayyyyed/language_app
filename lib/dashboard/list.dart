import 'package:flutter/material.dart';
import 'package:language_app/dashboard/data/progress_bar.dart';
import 'package:language_app/style/text.dart';

class HorizontalSliderListView extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  HorizontalSliderListView({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280, // Set your desired fixed height
      child: Container(
        height: 280, // Set the same height for the container
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];

            return Container(
              margin: EdgeInsets.only(left: 20.0),
              width: 180, // Width of each item
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(item['imageUrl']),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Rounded corners
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        // margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          //text align left

                          item['title'],
                          style:
                              headingFirst(fontSize: 20, color: Colors.black87),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          item['description'],
                          style:
                              headingSec(fontSize: 15, color: Colors.black87),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      DividedProgressBar(
                        progress: double.parse(item['progress'].toString()),
                      ),
                       SizedBox(height: 8.0),
                      Text(
                        '${(double.parse(item['progress'].toString()) * 100).toInt()}% completed',
                        style: headingFirst(fontSize: 12, color: Color.fromARGB(221, 251, 185, 3))),
                      
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
