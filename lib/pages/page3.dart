import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1B33),
      extendBodyBehindAppBar: true,

        appBar: AppBar(
          title: Text('Custom Rectangle'),
        ),
        body: Center(
          child: Container(
              child: CustomRectangle(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),

    );
  }
}



class CustomRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 100.0,
      child: CustomPaint(
        painter: RectanglePainter(),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    // Define the four points of the rectangle with different side lengths
    var point1 = Offset(0, 0);
    var point2 = Offset(200, 50);
    var point3 = Offset(200, 100);
    var point4 = Offset(0, 100);

    // Create a path and add the points to it
    var path = Path()
      ..moveTo(point1.dx, point1.dy)
      ..lineTo(point2.dx, point2.dy)
      ..lineTo(point3.dx, point3.dy)
      ..lineTo(point4.dx, point4.dy)
      ..close();

    // Draw the path onto the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}