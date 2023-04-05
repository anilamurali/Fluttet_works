

import 'package:flutter/material.dart';
class FittedBox_Exp extends StatelessWidget {
  const FittedBox_Exp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FittedBox Layout Widget Demo"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Card(
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      child: const Text("Understand With FittedBox",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                      ),),
                    ),
                    Container(
                      height: 200,
                      child: Image.asset("assets/image/anila.JPG"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),

    );
  }
}