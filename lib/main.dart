import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_december2/bottombar.dart';
import 'package:flutter_december2/carousal_example.dart';
import 'package:flutter_december2/convex_bottomnavigation.dart';
import 'package:flutter_december2/navigation_drawe.dart';
import 'package:flutter_december2/sliver_example.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';

void main(){
  runApp(DevicePreview(builder: (context){
    enabled: !kReleaseMode;
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.blueAccent)
      ),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SplashScreen(),);
    
  }));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Carousal_Example()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("MY APPLICATION")),
      // body:const Center(child: Image(image: AssetImage("assets/icons/home.png"),height: 200,width: 200,),
      // ),
      body: Container( 
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 23, 131, 180),
            Color.fromARGB(255, 250, 248, 249),
            Color.fromARGB(255, 61, 59, 36)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight)

          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Lottie.network("https://assets1.lottiefiles.com/packages/lf20_mxg41wj1.json"),
              
             const Text("MY APPLICATON",style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 1, 33, 59)),),
            ],
          ),
        ),
      ),
   );
  }
}
