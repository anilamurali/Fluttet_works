import 'package:flutter/material.dart';


class Wrap_wiget_Demo extends StatelessWidget {
  const Wrap_wiget_Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wrap Widget"),),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Wrap(
            // direction: Axis.vertical,
            // textDirection: TextDirection.rtl,
            alignment: WrapAlignment.spaceEvenly,
            children:  [
              // MyWidget("A"),
              // MyWidget("B"),
              // MyWidget("C"),
              // MyWidget("D"),
              // MyWidget("E"),
              // MyWidget("F"),
              MyChip(),
              MyChip(),
              MyChip(),
              MyChip(),
              MyChip(),

            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String text;
  MyWidget(this.text);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      color: Colors.amber,
      width: 50,
      height: 50,
      child: Center(child: Text(text)),

    );
  }
}
class MyChip extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Chip(label: Text("Name"),
      backgroundColor: Colors.purple,),
    );
  }
}