import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Carousal_Example extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
   items: [
    Container(decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1668595472869-88b3baf1d218?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"))),
      ),
      Container(decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1678791589088-f26ed2590a21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80"))),
      ),
      Container(decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1678791600882-e190d6b765f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"))),
      ),
      Container(decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1677170014118-38e4ef0e36c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8Ym84alFLVGFFMFl8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"))),
      ),
      Container(decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1678497178335-b2e3c404bf62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))),
      )
   ],
   options: CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 1,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
   )
 ),
    );
  }

}