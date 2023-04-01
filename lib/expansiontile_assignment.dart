import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class ExpansionTile_UI extends StatelessWidget {
  ///Fluter Internship six months an
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EXPANSION TILE"),),
      body: ListView(
        children:  [
          const Center(
            child:  Text(
              "EXPERIENCE",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                   40 
                  )
                ),
                child: Lottie.network("https://assets3.lottiefiles.com/packages/lf20_L72m3bQKrm.json",
                fit: BoxFit.fill,
                height: 200,
                width: 500),
                
              ),
              const Positioned(
                left: 10,
                right: 25,
                bottom: 10,
                top: 25,
                child: ExpansionTile(
                  title: Text("Fluter Internship",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                subtitle: Text("6 Months"),
                children: [
                  ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage("data:image/jpeg;base64,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"),),
                    title: Text("Duration : 4 Months"),
                  )
                ],
              
                ),
              )
            ],
          ),
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                   40 
                  )
                ),
                child: Lottie.network("https://assets3.lottiefiles.com/packages/lf20_L72m3bQKrm.json",
                fit: BoxFit.fill,
                height: 200,
                width: 500),
                
              ),
              const Positioned(
                left: 10,
                right: 25,
                bottom: 10,
                top: 25,
                child: ExpansionTile(
                  title: Text("Fluter Internship",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                subtitle: Text("6 Months"),
                children: [
                  ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage("data:image/jpeg;base64,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"),),
                    title: Text("Duration : 4 Months"),
                  )
                ],
              
                ),
              )
            ],
          ),
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                   40 
                  )
                ),
                child: Lottie.network("https://assets3.lottiefiles.com/packages/lf20_L72m3bQKrm.json",
                fit: BoxFit.fill,
                height: 200,
                width: 500),
                
              ),
              const Positioned(
                left: 10,
                right: 25,
                bottom: 10,
                top: 25,
                child: ExpansionTile(
                  title: Text("Fluter Internship",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                subtitle: Text("6 Months"),
                children: [
                  ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage("data:image/jpeg;base64,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"),),
                    title: Text("Duration : 4 Months"),
                  )
                ],
              
                ),
              )
            ],
          )
        ],
      ),


    );
  }
}