import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("MY APPLICATION")),
      // body:const Center(child: Image(image: AssetImage("assets/icons/home.png"),height: 200,width: 200,),
      // ),
      body: Container( 
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Lottie.network("https://assets1.lottiefiles.com/packages/lf20_t7Gs4GoQvT.json"),
              
              Text("MY APPLICATON",style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 1, 33, 59)),),
            ],
          ),
        ),
      ),
   );
  }

}