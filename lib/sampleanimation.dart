import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> with SingleTickerProviderStateMixin{
  Animation <double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this,duration: const Duration(seconds: 2));
    animation=Tween<double>(begin: 12.0,end: 50.0).animate(controller!)..addListener(() {
      setState(() {
        
      });
    });
  }
  void increaseSize(){
    controller!.forward();
  }
 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text("Hello all",
            style: TextStyle(fontSize: animation?.value),),
          ),
          ElevatedButton(onPressed: ()=>increaseSize(), child: const Text("Zoom On"))
        ],
      ),
    );
  }
}