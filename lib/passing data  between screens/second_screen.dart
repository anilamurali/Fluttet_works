import 'package:flutter/material.dart';
import 'package:flutter_december2/passing%20data%20%20between%20screens/dummy_data.dart';

class SecondPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final productId=ModalRoute.of(context)?.settings.arguments;
    final product=dummuProducts.firstWhere((element) => element["id"]==productId);

    return  Scaffold(
      appBar: AppBar(title: const Text("My Product"),),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Container(
            //   height: 100,
            //   child: Image(image: NetworkImage(product["image"])),
             
            //   // decoration:  BoxDecoration(
            //   //   image: DecorationImage(
            //   //     fit: BoxFit.cover,
            //   //     image: NetworkImage(product["image"]))
            //   // ),
            // ),
           Image(image: NetworkImage(product["image"])),
            Text("${product["name"]}"),
            Text("${product["price"]}"),
            Text("${product["description"]}"),
            Text("${product["rating"]}"),
          ],
        ),
        ),
    );
  }
}