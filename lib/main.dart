import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';

import 'Model/Cups_Model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double positiony = 0;
  bool selectedp = false;

  void changepostion(int index) {
    Coffee[index].selected == false
        ? Coffee[index].selected = true
        : Coffee[index].selected = false;
    selectedp == false ? selectedp = true : selectedp = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 220,
            ),
            ArcText(
              radius: 150,
              text: " MICKY'S CAFE",
              textStyle: TextStyle(fontSize: 28, color: Colors.black),
              startAngle: -pi / 4.5,
            ),
            Stack(
              children: [
                AnimatedPositioned(
                  bottom: selectedp ? 34 : 100,
                  left: selectedp ? 80 : 1000,
                  width: 250,
                  duration: Duration(seconds: 1),
                  child: Image.asset("assets/plate.png"),
                ),
                AnimatedPositioned(
                  bottom: 210,
                  left: 80,
                  width: 250,
                  duration: Duration(seconds: 2),
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 50,
                    color: selectedp ? Colors.transparent : Colors.brown,
                  ),
                ),
                Positioned(
                  child: CarouselSlider.builder(
                    carouselController: CarouselController(),
                    itemCount: Coffee.length,
                    options: CarouselOptions(
                      height: 500,
                      viewportFraction: 0.5,
                      enlargeCenterPage: false,
                      initialPage: 0,
                      autoPlay: false,
                      enableInfiniteScroll: false,
                      scrollPhysics: PageScrollPhysics(),
                      pageSnapping: true,
                    ),
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) =>
                            Column(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 1200),
                          transform: Matrix4.translationValues(
                              0, Coffee[index].selected ? 250 : 0, 0),
                          curve: Curves.easeInOut,
                          // Animation curve
                          width: 200.0,
                          height: 200.0,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  changepostion(index);
                                });
                              },
                              child: Image.asset(Coffee[index].image)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            Coffee[index].name,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
