import 'package:flutter/material.dart';

class AvatarWithText extends StatelessWidget {
  final String imagePath;
  final String text;
  final double avatarRadius;
  final double borderThickness;
  final Color borderColor;

  AvatarWithText({
    required this.imagePath,
    required this.text,
    this.avatarRadius = 65.0,
    this.borderThickness = 2.0,
    this.borderColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: avatarRadius,
          backgroundImage: AssetImage(imagePath),
          backgroundColor:Color.fromARGB(255, 44, 53, 118), // Make the background transparent
          foregroundColor: borderColor, // Set border color
          foregroundImage: AssetImage(imagePath), // Set the image again to show inside the border
        ),
        SizedBox(height: 0), // Adjust this value for spacing
        Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'Helvetica Rounded'),
        ),
      ],
    );
  }
}