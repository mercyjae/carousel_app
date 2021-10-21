import 'package:carousel_app/carousel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,
        home: Carousel());
  }
}
