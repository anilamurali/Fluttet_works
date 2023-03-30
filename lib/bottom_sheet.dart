import 'package:flutter/material.dart';
class BotomSheet_exmp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: GestureDetector(
          onLongPress: (){
            showSheet(context);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: Text("Click me to show bottom sheet")),
            ],
          ),
        ),
      );
  }
  
  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Shere"),
              ),
            ListTile(
              leading: Icon(Icons.copy),
              title: Text("Copy"),
              )
          ],
        ),
      );
    });
  }

}