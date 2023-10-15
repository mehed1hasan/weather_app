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
        backgroundColor: Color(0xFF1C1B33),
        title: Text("Weather",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Stack(
        children: [

        ],
      ),
    );
  }
}
