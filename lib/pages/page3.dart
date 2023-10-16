import 'package:flutter/material.dart';
import 'package:weather_app/models/lists.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1B33),
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1B33),
        title: const Text('Weather',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          /// Search bar container
          Container(
            height: 40,
            width: 400,
            margin: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            decoration: const BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: const Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.search, size: 25,color: Colors.white54,),
                SizedBox(width: 10,),
                Text('Search for a city or airport',
                  style: TextStyle(
                      color: Colors.white54
                  ),)
              ],
            ),
          ),
          /// Weather box list container
          Container(
              height: double.infinity,
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(30, 160, 30, 0),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: lists.length,
                  itemBuilder: (context, index){
                    final item = lists[index];
                    return Stack(
                      children: [
                        ClipPath(
                          clipper: BackgroundClipper(),
                          child: Container(
                            width: 350,
                            height: 190,
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            //color: Colors.blue,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.indigo.shade800,Colors.indigo.shade900],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ),
                        /// Text Container
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 30, 100, 0),
                          height: 200,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.temperature,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text('H:24° L:18°',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(item.place,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        /// Image Container
                        Container(
                          height: 140,
                          width: 180,
                          margin: const EdgeInsets.fromLTRB(220, 0, 30, 0),
                          child: Image.asset(
                            item.image2,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    );
                  }
              )
          ),
        ],
      ),

    );
  }
}

class BackgroundClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    double roundnessFactor=30;


    /// bottom left corner
    path.lineTo(0, size.height-roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);


    /// bottom right corner
    path.lineTo(size.width-roundnessFactor, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height-roundnessFactor);


    /// top right corner
    path.lineTo(size.width, 70+roundnessFactor); /// p0
    path.quadraticBezierTo(size.width, 70, size.width-30, 70-5); /// p1, p2


    /// top left corner
    path.lineTo(30, 5);
    path.quadraticBezierTo(0, 0, 0, 30);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return true;
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
    var point1 = const Offset(0, 0);
    var point2 = const Offset(200, 0);
    var point3 = const Offset(150, 100);
    var point4 = const Offset(0, 100);

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