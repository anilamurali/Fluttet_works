import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MediaExample extends StatelessWidget {
  var size, height,width,orientaion;
  @override
  Widget build(BuildContext context) {
    orientaion =MediaQuery.of(context).orientation;
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(appBar: AppBar(title: const Text("Orientation Media Query"),),
      body: orientaion== Orientation.portrait ?
      Container(
        color: Colors.blue,
        width: width/4,
        height: height/4,
      )
      :
      Container(
        height: height/2,
        width: width/2,
        color: Colors.red,
      ),
    );
  }
}