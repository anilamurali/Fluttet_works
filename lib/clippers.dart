import 'package:flutter/material.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Clipper_Example extends StatelessWidget {
  const Clipper_Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clipper Demo"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Text("ClipRect",
                style: Theme.of(context).textTheme.headline4,),
              ),
              ClipRect(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    widthFactor: 0.5,
                    heightFactor: 0.8,
                    child: Image.network("https://images.unsplash.com/photo-1618411610011-fb3b7695a765?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zmxvd2VyJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Text("ClipRoundRect",
                style: Theme.of(context).textTheme.headline4,),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(400),
                child: Image.network("https://images.unsplash.com/photo-1635377361665-60442f6cf799?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y3V0ZSUyMGJhYnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Text("ClipOval",
                style: Theme.of(context).textTheme.headline4,),
              ),
              ClipOval(
                
                child: Image.network("https://images.unsplash.com/photo-1610862067133-46b3ef8ec115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGN1dGUlMjBiYWJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              ClipPath(
                clipper: MultipleRoundedCurveClipper(),
                child: Image.network("https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VhJTIwYmVhY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
              ClipPath(
                clipper: WaveClipperTwo(flip: true,reverse: true),
                child: Image.network("https://media.istockphoto.com/id/610041376/photo/beautiful-sunrise-over-the-sea.jpg?b=1&s=170667a&w=0&k=20&c=BBclSmkgO6BN0xGi7i56hJCDO0e4Wo1qvp3IbiUgo9Q="),
              ),
              ClipPath(
                clipper: WaveClipperTwo(reverse: true),
                child: Image.network("https://media.istockphoto.com/id/610041376/photo/beautiful-sunrise-over-the-sea.jpg?b=1&s=170667a&w=0&k=20&c=BBclSmkgO6BN0xGi7i56hJCDO0e4Wo1qvp3IbiUgo9Q="),
              ),


            ],
          ),
        ),
      ),
    );
  }
}