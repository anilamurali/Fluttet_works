import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bottom_Bar extends StatefulWidget{
  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
  List screens=[
    const Center(child: Text("Home"),),
    const Center(child: Text("Account"),),
    const Center(child: Text("Search"),),
    const Center(child: Text("Menu"),),

  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: const Text("Botton Navigation Bar"),),
    bottomNavigationBar: ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      child: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.pink,
        backgroundColor: Colors.teal,
        currentIndex: index,
        onTap: (taped_index){
          setState(() {
            index=taped_index;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: "Account"),
        BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
      ]),
    ),
    body: screens[index],
   );
  }
}