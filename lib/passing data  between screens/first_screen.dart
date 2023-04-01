
import 'package:flutter/material.dart';
import 'package:flutter_december2/passing%20data%20%20between%20screens/dummy_data.dart';

class FirstPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Home Page "),),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: dummuProducts.map((product) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(product["image"]),
            ),
            title: Text(product["name"]),
            onTap: () => goToSecond(context,product["id"]),
          );
        }).toList(),
      ),
    );
  }
  
 void goToSecond(BuildContext context, productId) {
    Navigator.pushNamed(context, "second",arguments: productId);
  }
}