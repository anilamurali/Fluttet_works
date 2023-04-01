import 'package:flutter/material.dart';


class MyDesktopBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Text("D E S K T O P"),),
        body:  Padding(padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 17/9,
                      child: Container(
                        color: Colors.deepPurple[400],
                      
                        
                      ),
                    ),
                  ),
                  Expanded(
                     child: ListView.builder(
                     itemCount: 8,
                      itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                           ),
                );

            }
            )
          )
                ],
              )
            )
          ],
        ),
        ),
    );
  }
}