import 'package:flutter/material.dart';

class Sliver_Example extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          title: Text("Sliver AppBar"),
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart) ),
            IconButton(onPressed: (){}, icon:Icon(Icons.favorite) ),
          ],
          bottom: AppBar(
            elevation: 0,
            title: Container(
              height: 40,
              width:double.infinity,
              color: Colors.white,
              child: const TextField(
                decoration: InputDecoration(
                hintText: "Search Here",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.camera_alt)
                
              ),
              ),
            ),
          ),


        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            height: 300,
            child: Center(
              child: Text(
                "INSIDE SLIVER $index",
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        },childCount: 10,
        )
        )

      ],
    ),
    
   );
  }

}