// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:language_app/dashboard/header_dashboard.dart';
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
                margin: EdgeInsets.only(top: 25, bottom: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.book,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    Text(
                      'Deutsch',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ),
                
                 // Add space here
              
              SizedBox(
                height: 220, // Set a fixed height
                child: HorizontalSliderListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalSliderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10, // Number of items in the slider
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            width: 200, // Width of each item
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Item $index',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Description of Item $index',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
// class ProductCarousel extends StatelessWidget {
//   final List<Product> products;
//   const ProductCarousel({
//     super.key,
//     required this.products,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 165,
//       child: ListView.builder(
//         shrinkWrap: true,
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         scrollDirection: Axis.horizontal,
//         itemCount: products.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.only(right: 5.0),
//             child: ProductCard(product: products[index]),
//           );
//         },
//       ),
//     );
//   }
// }


