import 'package:flutter/material.dart';

class ExpansionTile_exp extends StatelessWidget {
  var colors=[
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple
    ];
  List data=[
    "yellow",
    "red",
    "green",
    "blue",
    "purple"
    ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXPASION TILE") ,
      ),
    body:  ExpansionTile(
      title: const Text("Colors"),
      subtitle: const Text("List of colors"),
      children: List.generate(5, (index) => ListTile(
        leading:CircleAvatar(backgroundColor: colors[index],) ,
        title: Text(data[index]),
      )
      ),
      ),
    );
  }
}