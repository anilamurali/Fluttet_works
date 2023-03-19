import 'package:flutter/material.dart';

class Navigation_Drawe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Drawer")
    ,),
    drawer: Theme(
      data: Theme.of(context).copyWith(canvasColor: Color.fromARGB(255, 167, 207, 240)),

      child: Drawer(
        child: ListView(
          children:const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("data:image/jpeg;base64,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")),
                
              ),
              
              accountName: Text("Anila Murali"), accountEmail: Text("anilamurali@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/image/anila.JPG"),),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage("assets/image/anila.JPG"),),
              CircleAvatar(backgroundImage: AssetImage("assets/image/anila.JPG"),),
              
            ],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
      ),
    ),

   );
  }

}