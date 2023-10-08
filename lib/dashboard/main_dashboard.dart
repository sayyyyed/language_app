// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
          ],
        ),
      ),
    ),
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


