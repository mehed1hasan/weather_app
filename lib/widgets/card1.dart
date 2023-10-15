import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/pages/page2.dart';

class Card1 extends StatefulWidget {
  Card1({
    super.key,
    required this.time,
    required this.image,
    required this.temperature,
  });

  String time;
  String image;
  String temperature;

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
      },
      child: Container(
        height: 150,
        width:65,
        margin: const EdgeInsets.fromLTRB(0, 5, 15, 10),
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        decoration: BoxDecoration(
          color: const Color(0xFF2E335A),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
              color: Colors.white24
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white10,
              offset: Offset(-2, -2),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2, 2),
              blurRadius: 10,
            ),
          ],

        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.time,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13
            ),
            ),
            Image.asset(
              width: 60,
              height: 60,
              widget.image
            ),
            Text(widget.temperature,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17
              ),
            ),
          ],
        ),

      ),
    );
  }
}
