// On Back press with altert
import 'package:flutter/material.dart';
class OnBackPress_With_Alert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showAltert() async {
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: const Text("Confirm Exit"),
          content: const Text("Do you really want to exit"),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: const Text("Yes")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: const Text("No")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: const Text("Cancel"))

          ],
        );
      }
      );
  }
    return WillPopScope(
      onWillPop: showAltert,
      child: const Scaffold(
        body: Center(
          child: Text("Press Back Button to exit"),
        ),
      ));
  }


  
}