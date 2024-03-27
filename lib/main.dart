import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _imagePath = [
    'lib/assets/1.png',
    'lib/assets/2.png',
    'lib/assets/1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(autoPlay: true),
                  items: _imagePath.map((imagePaths) {
                    return Image.asset(imagePaths);
                  }).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
