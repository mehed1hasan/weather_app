import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:weather_app/widgets/card1.dart';

import '../models/lists.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/homeBg.png',
              fit: BoxFit.cover,
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(100, 80, 100, 0),
            height: 230,
            width: 210,
            child: const Column(
              children: [
                Text('Dhaka',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                Text('19°',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w200
                  ),
                ),
                Text('Mostly Clear',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
                ),
                Text('H:24 L:18',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(20, 330, 20, 0),
            height: 340,
            width: 370,
            child: Image.asset(
              'assets/houseBg.png',
              fit: BoxFit.cover,
            ),
          ),
          /// Bottom container
          Container(
            height: 330,
            width: 410,
            margin: const EdgeInsets.only(top: 520),
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x662E335A),Color(0x661C1B33),],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50)
              ),
              boxShadow: [
                /*BoxShadow(
                  color: Colors.white54,
                  offset: Offset(20, 20),
                  blurRadius: 30,
                  //spreadRadius: 10,
                ),*/
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(30, 30),
                  blurRadius: 100,
                  //spreadRadius: 10,
                ),
              ],
              ),
            child: Column(
              children: [
                const SizedBox(height: 7,),
                Container(
                  height: 5,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                const SizedBox(height: 12,),
                const Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 30,),
                    Text("Hourly Forecast",
                    style: TextStyle(color: Colors.white54, fontSize: 13),),
                    SizedBox(width: 90,),
                    Text("Weekly Forecast",
                      style: TextStyle(color: Colors.white54, fontSize: 13),),
                    SizedBox(width: 30,),
                  ],
                ),
                const Divider(height: 10,color: Colors.white38,)
              ],
            ),
            ),
/// Card
          Container(
            height: 175,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 590, 0, 0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: lists.length,
              itemBuilder: (context, index){
                final item = lists[index];
                return Card1(
                  time: item.time,
                  image: item.image,
                  temperature: item.temperature,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
