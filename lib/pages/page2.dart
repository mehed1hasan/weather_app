import 'package:flutter/material.dart';
import 'package:weather_app/pages/page3.dart';
import 'bar.dart';

import '../models/lists.dart';
import '../widgets/card1.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1B33),
      body: Stack(
        children: [
          /// First container
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 175),
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2E335A),Color(0xFF1C1B33),],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(10, -10),
                  blurRadius: 20,
                  ///spreadRadius: 5,
                ),
               BoxShadow(
                 color: Colors.white,
                  offset: Offset(20, 20),
                  blurRadius: 30,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          /// Upper Text Container Colum
          Container(
            margin: const EdgeInsets.fromLTRB(100, 70, 100, 0),
            height: 230,
            width: 210,
            child: const Column(
              children: [
                Text('Dhaka',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Text('19° | Mostly Clear',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),

          /// List Container
          Container(
            height: 175,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 240, 0, 0),
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
          ),
          /// See more Box
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 240+170+30, 20, 0),
              height: 180,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.white10)
              ),
              child:Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.air_outlined,size: 16,color: Colors.white54,),
                        SizedBox(width: 10,),
                        Text(
                          "AIR QUALITY",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "69-High Health Risk",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white70
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Stack(
                        children:[
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            height: 5,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                colors: [Colors.blue, Colors.pink.shade600],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(270, 0, 20, 0),
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 3,color: Colors.black)
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Divider(color: Colors.grey[700],),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "See More",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white54,),
                      ],
                    ),
                  ],
                ),
              )
            ),
          ),

          Container(
            margin:EdgeInsets.fromLTRB(25, 240+170+30+200, 20, 0),
            height: 600,
            width: 700,
            color: Colors.transparent,
            child: GridView.count(
              primary: false,
             // padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      width: 1,
                      color: Colors.white60,
                    ),
                    color: Color(0xff1f1d47),
                  ),
                  child: Image.asset("assets/uvindex.png"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      width: 1,
                      color: Colors.white60,
                    ),
                    color: Color(0xff1f1d47),
                  ),
                  child: Image.asset("assets/sr.png"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      width: 1,
                      color: Colors.white60,
                    ),
                    color: Color(0xff1f1d47),
                  ),
                  child: Image.asset("assets/wind.png"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      width: 1,
                      color: Colors.white60,
                    ),
                    color: Color(0xff1f1d47),
                  ),
                  child: Image.asset("assets/rainfall.png"),
                ),

              ],
            ),
          )
          //Text("fuck",style: TextStyle(fontSize: 89),)

        ],
      ),
    );
  }
}
