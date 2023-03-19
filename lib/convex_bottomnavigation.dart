import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Convex_Bottom_Naviogation extends StatefulWidget{
  @override
  State<Convex_Bottom_Naviogation> createState() => _Convex_Bottom_NaviogationState();
}

class _Convex_Bottom_NaviogationState extends State<Convex_Bottom_Naviogation> {
  List screens=[
   const Center(child:  Text("Home"),),
   const Center(child:  Text("Discovery"),),
   const Center(child:  Text("Add"),),
   const Center(child:  Text("Message"),),
   const Center(child:  Text("Profile"),),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.black,
    items: const [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'Discovery'),
      TabItem(icon: Icons.add, title: 'Add'),
      TabItem(icon: Icons.message, title: 'Message'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
    onTap: (tap_index){
      setState(() {
        index=tap_index;
      });

    },
  ),
  body: screens[index],

    );
  }
}