import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rive/rive.dart';
class BotomSheet_IconPlus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
    body: Stack(
      children:[
        const RiveAnimation.asset("assets/rive/loader.riv",fit: BoxFit.cover,),
        Center(
        child: GestureDetector(
          onDoubleTap: () {
            bottomShow(context);
          },
          child:   
               const Text(
                 "Click here",style: TextStyle(color: Color.fromARGB(255, 23, 47, 59), fontSize: 20),
                 ),
        ),
      ),
      ]
    )
   );
  }
  
  void bottomShow(BuildContext context) {
   showModalBottomSheet(context: context, builder: (context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Shared by"),
          ListTile(
            leading: Logo(Logos.facebook_logo),
            title: const Text("Facebook"),
          ),
          ListTile(
            leading: Logo(Logos.whatsapp),
            title: const Text("WhatsApp"),
          ),
          ListTile(
            leading: Logo(Logos.gmail),
            title: const Text("Gmail"),
          ),
          ListTile(
            leading: Logo(Logos.instagram),
            title: const Text("Instagram"),
          )
        ],
      ),
    );
   });
  }

}