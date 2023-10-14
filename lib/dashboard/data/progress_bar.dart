// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class DividedProgressBar extends StatelessWidget {
  final double progress;
  

  DividedProgressBar({
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(150, 5), // Set the size of the progress bar
      painter: DividedProgressBarPainter(progress, 5),
    );
  }
}

class DividedProgressBarPainter extends CustomPainter {
  final double progress;
  final double gapWidth; // Width of the gap between segments

  DividedProgressBarPainter(this.progress, this.gapWidth);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint filledPaint = Paint()
      ..color = const Color.fromARGB(255, 216, 217, 218) // Color of the filled segments
      ..style = PaintingStyle.fill;

    final Paint emptyPaint = Paint()
      ..color = Colors.grey // Color of the empty segments
      ..style = PaintingStyle.fill;

    final Paint yellowPaint = Paint()
      ..color = Color.fromARGB(221, 251, 185, 3) // Color of the yellow segments
      ..style = PaintingStyle.fill;

    final double segmentWidth = (size.width - (gapWidth * 4)) / 5; // Calculate width of each segment

    // Calculate the number of segments to color with yellow
    int yellowSegments = (5 * progress.clamp(0.0, 1.0)).ceil();

    // Draw filled and yellow segments
    for (int i = 0; i < yellowSegments; i++) {
      final double startX = i * (segmentWidth + gapWidth);
      final double endX = startX + segmentWidth;
      final Rect rect = Rect.fromPoints(
        Offset(startX, 0),
        Offset(endX, size.height),
      );
      canvas.drawRect(rect, yellowPaint);
    }

    // Draw empty segments
    for (int i = yellowSegments; i < 5; i++) {
      final double startX = i * (segmentWidth + gapWidth);
      final double endX = startX + segmentWidth;
      final Rect rect = Rect.fromPoints(
        Offset(startX, 0),
        Offset(endX, size.height),
      );
      canvas.drawRect(rect, filledPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

