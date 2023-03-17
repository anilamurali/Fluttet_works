import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bottom_Bar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Botton Navigation Bar"),),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: "Account"),
      BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "call"),
      BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
    ]),
   );
  }

}