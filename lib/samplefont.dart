import 'package:flutter/material.dart';


class MyFonts extends StatelessWidget {
  const MyFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Text("Hello World",style: TextStyle(fontFamily: 'Schibsted_Grotesk',
          fontSize: 45),
          )
          ),
          Center(child: Text("Hello World",style: TextStyle(
          fontSize: 45),
          )
          ),
        ],
      )
    );
  }
}